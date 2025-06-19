<?php


namespace App\Http\Services;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
class UploadService
{
    public function store($request)
    {
        if ($request->file('file')->isValid()) {   
            try {
                $manager = new ImageManager(new Driver());
                $image = $manager->read($request->file('file'));
                $thumb = $manager->read($request->file('file'));
                
                $width = $image->width(); 
                $height = $image->height(); 
                //dump($width);
                //dump($height);
                $imageName = date("Y_m_d").'_'.$request->file('file')->getClientOriginalName();
                $thumbName = 'thumb_'.date("Y_m_d").'_'.$request->file('file')->getClientOriginalName();
                $folder = $request->folder;
                $pathFull = 'uploads/'.$folder;
                $image->save(storage_path('app/public/uploads/'.$folder.'/'.$imageName));
                
                $thumb->scale(width: 150)->save(storage_path('app/public/uploads/'.$folder.'/'.$thumbName));

                return [
                    'path' => '/storage/'.$pathFull.'/'. $imageName,
                    'thumb' => '/storage/'.$pathFull.'/'. $thumbName,
                    'width' => $width,
                    'height' => $height,
                ];
            } catch (\Exception $error) {
                return false;
            }
        }
    }
}
