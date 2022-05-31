lbl_804DF038:
/* 804DF038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF03C  7C 08 02 A6 */	mflr r0
/* 804DF040  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF048  7C 7F 1B 78 */	mr r31, r3
/* 804DF04C  4B FF FB A9 */	bl Player_actor_Check_AbleRadioExercise
/* 804DF050  2C 03 00 00 */	cmpwi r3, 0
/* 804DF054  41 82 00 0C */	beq lbl_804DF060
/* 804DF058  38 60 00 00 */	li r3, 0
/* 804DF05C  48 00 00 58 */	b lbl_804DF0B4
lbl_804DF060:
/* 804DF060  4B EB BE 59 */	bl mEv_CheckTitleDemo
/* 804DF064  2C 03 00 00 */	cmpwi r3, 0
/* 804DF068  41 81 00 48 */	bgt lbl_804DF0B0
/* 804DF06C  4B EF E7 CD */	bl mPlib_Check_scene_able_change_camera_pos
/* 804DF070  2C 03 00 00 */	cmpwi r3, 0
/* 804DF074  41 82 00 3C */	beq lbl_804DF0B0
/* 804DF078  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804DF07C  38 00 00 00 */	li r0, 0
/* 804DF080  2C 04 00 00 */	cmpwi r4, 0
/* 804DF084  41 80 00 10 */	blt lbl_804DF094
/* 804DF088  2C 04 00 79 */	cmpwi r4, 0x79
/* 804DF08C  40 80 00 08 */	bge lbl_804DF094
/* 804DF090  38 00 00 01 */	li r0, 1
lbl_804DF094:
/* 804DF094  2C 00 00 00 */	cmpwi r0, 0
/* 804DF098  41 82 00 18 */	beq lbl_804DF0B0
/* 804DF09C  3C 60 80 64 */	lis r3, data_5287@ha /* 0x80647CE8@ha */
/* 804DF0A0  38 63 7C E8 */	addi r3, r3, data_5287@l /* 0x80647CE8@l */
/* 804DF0A4  7C 63 20 AE */	lbzx r3, r3, r4
/* 804DF0A8  7C 63 07 74 */	extsb r3, r3
/* 804DF0AC  48 00 00 08 */	b lbl_804DF0B4
lbl_804DF0B0:
/* 804DF0B0  38 60 00 00 */	li r3, 0
lbl_804DF0B4:
/* 804DF0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF0B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF0BC  7C 08 03 A6 */	mtlr r0
/* 804DF0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF0C4  4E 80 00 20 */	blr 
