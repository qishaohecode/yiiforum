<?php
$cachedRoleGroups['group_admin'] = [
	'name' => 'group_admin',
	'type' => 1,
	'description' => '管理员组',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1401369900',
	'updated_at' => '1401369900',
	'roles' => [
		'管理员',
	],
];
$cachedRoleGroups['group_custom'] = [
	'name' => 'group_custom',
	'type' => 1,
	'description' => '自定义组',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1401451311',
	'updated_at' => '1401451311',
	'roles' => [
		'版主',
	],
];
$cachedRoleGroups['group_member'] = [
	'name' => 'group_member',
	'type' => 1,
	'description' => '会员组',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1401369927',
	'updated_at' => '1401369927',
	'roles' => [
		'一级会员',
		'二级会员',
		'新手入门',
		'高级会员',
	],
];
$cachedRoleGroups['group_special'] = [
	'name' => 'group_special',
	'type' => 1,
	'description' => '特殊组',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1401369950',
	'updated_at' => '1401369950',
	'roles' => [
	],
];
$cachedRoles['管理员'] = [
	'group' => 'group_admin',
	'name' => '管理员',
	'type' => 1,
	'description' => '管理员有各种操作权限',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1425551891',
	'updated_at' => '1425551891',
	'permissions' => [
		'post_add',
		'post_delete',
		'post_edit',
		'thread_add',
		'thread_delete',
		'thread_edit',
		'thread_view',
	],
];
$cachedRoles['版主'] = [
	'group' => 'group_custom',
	'name' => '版主',
	'type' => 1,
	'description' => '版主',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1425551934',
	'updated_at' => '1425551934',
	'permissions' => [
		'post_add',
		'post_delete',
		'post_edit',
		'thread_view',
	],
];
$cachedRoles['一级会员'] = [
	'group' => 'group_member',
	'name' => '一级会员',
	'type' => 1,
	'description' => '一级会员',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1425551977',
	'updated_at' => '1425551977',
	'permissions' => [
	],
];
$cachedRoles['二级会员'] = [
	'group' => 'group_member',
	'name' => '二级会员',
	'type' => 1,
	'description' => '二级会员',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1425551991',
	'updated_at' => '1425551991',
	'permissions' => [
		'post_add',
		'post_delete',
		'post_edit',
		'thread_view',
	],
];
$cachedRoles['新手入门'] = [
	'group' => 'group_member',
	'name' => '新手入门',
	'type' => 1,
	'description' => '新手入门',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1425551957',
	'updated_at' => '1425551957',
	'permissions' => [
		'post_add',
		'post_delete',
		'post_edit',
		'thread_view',
	],
];
$cachedRoles['高级会员'] = [
	'group' => 'group_member',
	'name' => '高级会员',
	'type' => 1,
	'description' => '高级会员',
	'rule_name' => '',
	'data' => '',
	'created_at' => '1425552006',
	'updated_at' => '1425552006',
	'permissions' => [
		'post_add',
		'post_delete',
		'post_edit',
		'thread_view',
	],
];
