create table admin
(
	id bigint(11) not null
		primary key,
	user_name varchar(30) not null,
	password varchar(30) not null,
	nick_name varchar(30) null,
	role_id bigint null,
	last_login_time datetime null,
	create_id bigint(11) null,
	create_time datetime null,
	update_id bigint(11) null,
	update_time datetime null,
	del_state tinyint(1) null
)
;

create table role
(
	id bigint(11) not null
		primary key,
	name varchar(50) null,
	create_id bigint(11) null,
	create_time datetime null,
	update_id bigint(11) null,
	update_time datetime null,
	del_state tinyint(1) null
)
;
create table student
(
	id bigint(11) not null auto_increment
		primary key,
	name varchar(50) null,
	gender tinyint(1) null,
	birthday date null,
	blood_type varchar(20) null,
	constellation varchar(20) null,
	belief varchar(50) null,
	father_birthday date null,
	mather_birthday date null,
	telephone varchar(50) null,
	mobile varchar(50) null,
	info_source varchar(50) null,
	emergency_contact varchar(50) null,
	emergency_contact_phone varchar(50) null,
	qq varchar(50) null,
	email varchar(50) null,
	wechat varchar(50) null,
	identity_card varchar(50) null,
	ancestral_home varchar(50) null,
	vehicle varchar(50) null,
	address varchar(255) null,
	post_code varchar(10) null,
	has_pc varchar(20) null,
	cost_source varchar(50) null,
	learning_time varchar(50) null,
	mental_preparation varchar(255) null,
	family_support varchar(50) null,
	remark varchar(255) null,
	computer_basis varchar(255) null,
	soft_basis varchar(255) null,
	computer_operate varchar(255) null,
	language_skill varchar(255) null,
	expectation varchar(255) null,
	class_teacher varchar(50) null,
	class_type varchar(50) null,
	class_begin date null,
	hobby varchar(255) null,
	counselor varchar(50) null,
	record_number varchar(20) null,
	create_time datetime null,
	create_name varchar(50) null,
	update_time datetime null,
	update_name varchar(50) null,
	del_state tinyint(1) default '0' null,
	payment decimal(20,2) null,
	compony varchar(255) null,
	work_type varchar(20) null,
	off_job varchar(255) null,
	in_school_name varchar(255) null,
	grade varchar(20) null,
	highest_degree varchar(100) default '' null,
	major varchar(100) null,
	school varchar(255) null,
	employment_condition varchar(255) null
)
;

comment on column student.name is '名字'
;

comment on column student.gender is '性别'
;

comment on column student.birthday is '生日'
;

comment on column student.blood_type is '血型'
;

comment on column student.constellation is '星座'
;

comment on column student.belief is '信仰'
;

comment on column student.father_birthday is '父亲生日'
;

comment on column student.mather_birthday is '母亲生日'
;

comment on column student.telephone is '家庭电话'
;

comment on column student.mobile is '手机号码'
;

comment on column student.info_source is '报名信息来源'
;

comment on column student.emergency_contact is '应急联系人'
;

comment on column student.emergency_contact_phone is '应急联系电话'
;

comment on column student.qq is 'qq'
;

comment on column student.email is '邮箱'
;

comment on column student.wechat is '微信'
;

comment on column student.identity_card is '身份证'
;

comment on column student.ancestral_home is '籍贯'
;

comment on column student.vehicle is '交通工具'
;

comment on column student.address is '家庭住址'
;

comment on column student.post_code is '邮编'
;

comment on column student.has_pc is '家里能否上机'
;

comment on column student.cost_source is '费用来源'
;

comment on column student.learning_time is '学习时间是否能保证'
;

comment on column student.mental_preparation is '是否做到坚持到底的思想准备'
;

comment on column student.family_support is '家庭是否支持'
;

comment on column student.remark is '备注'
;

comment on column student.computer_basis is '计算机基础'
;

comment on column student.soft_basis is '软件基础知识'
;

comment on column student.computer_operate is '上网操作'
;

comment on column student.language_skill is '语言能力'
;

comment on column student.expectation is '学习期望'
;

comment on column student.class_teacher is '班主任'
;

comment on column student.class_type is '班级类型'
;

comment on column student.class_begin is '开班时间'
;

comment on column student.hobby is '兴趣爱好'
;

comment on column student.counselor is '咨询师'
;

comment on column student.record_number is '档案号'
;

comment on column student.create_time is '信息创建时间'
;

comment on column student.create_name is '信息创建人'
;

comment on column student.update_time is '信息更新时间'
;

comment on column student.update_name is '信息更新人'
;

comment on column student.del_state is '删除状态 1：已删除 ；0： 未删除'
;

comment on column student.payment is '缴费金额'
;

comment on column student.compony is '单位名称'
;

comment on column student.work_type is '工作种类   '
;

comment on column student.off_job is '待业'
;

comment on column student.in_school_name is 'z在读学校名字'
;

comment on column student.grade is '在读学校年级'
;

comment on column student.highest_degree is '学历'
;

comment on column student.major is '专业'
;

comment on column student.school is '毕业学校'
;

comment on column student.employment_condition is '是否了解推荐就业条件'
;


