<?php 
namespace  frontend\models;

use common\models\Thread;
class ThreadHandle extends Thread{
	
	/**
	 * 查询最新的帖子包含幻灯片和最新的帖子数据
	 * @param unknown $num 要获取的数据数量
	 */
	public function getNewObtainImage($num){
		$image_data = Thread::find()->where('subject_image != :subject_image', [':subject_image' => ''])->limit($num)->offset(0)->orderBy('create_time DESC')->asArray()->all();
		//if(!empty($image_data)&&is_array($image_data))
	}
	
	public function getNewThread($num){
		
	}
	
}

?>