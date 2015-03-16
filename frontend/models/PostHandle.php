<?php 
namespace frontend\models;

use common\models\Post;
use yii\db\Query;

/**
 * 
 * @author ericsqi
 * 帖子业务处理类，包含查询最热，等查询或者其他业务炒作
 */
class PostHandle extends Post{
	
	/**
	 * 获取最新发布有图片的10条帖子
	 */
	public function getTopPost(){
		
		return  Post::find()->where(array("user_name"=>"admin"))->asArray()->all();
// 		$query = new Query();
// 		$rows = $query->select('*')->limit(10)->from('post')->where('user_name = :user_name', [':user_name' => 'admin'])->all();
		
		//print_r($rows);
	}
	
	/**
	 * 获取最新发布的10条帖子除去在幻灯片中已经显示的
	 */
	
	
	
}

?>