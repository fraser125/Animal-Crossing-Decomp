lbl_804D4BDC:
/* 804D4BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4BE0  7C 08 02 A6 */	mflr r0
/* 804D4BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D4BEC  7C 7F 1B 78 */	mr r31, r3
/* 804D4BF0  4B EC 62 C9 */	bl mEv_CheckTitleDemo
/* 804D4BF4  2C 03 00 00 */	cmpwi r3, 0
/* 804D4BF8  40 81 00 0C */	ble lbl_804D4C04
/* 804D4BFC  38 60 FF FF */	li r3, -1
/* 804D4C00  48 00 01 0C */	b lbl_804D4D0C
lbl_804D4C04:
/* 804D4C04  4B F0 8D E5 */	bl mPlib_Check_now_handin_item
/* 804D4C08  2C 03 00 00 */	cmpwi r3, 0
/* 804D4C0C  40 82 00 38 */	bne lbl_804D4C44
/* 804D4C10  4B FF FF 89 */	bl Player_actor_GetController_old_recognize_percentR
/* 804D4C14  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D4C18  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804D4C1C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804D4C20  40 82 00 24 */	bne lbl_804D4C44
/* 804D4C24  7F E3 FB 78 */	mr r3, r31
/* 804D4C28  4B FF F8 BD */	bl func_804D44E4
/* 804D4C2C  2C 03 00 00 */	cmpwi r3, 0
/* 804D4C30  40 82 00 14 */	bne lbl_804D4C44
/* 804D4C34  7F E3 FB 78 */	mr r3, r31
/* 804D4C38  4B FF FC 65 */	bl Player_actor_CheckController_forShake_tree
/* 804D4C3C  2C 03 00 00 */	cmpwi r3, 0
/* 804D4C40  41 82 00 0C */	beq lbl_804D4C4C
lbl_804D4C44:
/* 804D4C44  38 60 FF FF */	li r3, -1
/* 804D4C48  48 00 00 C4 */	b lbl_804D4D0C
lbl_804D4C4C:
/* 804D4C4C  4B B3 1D F1 */	bl JW_JUTGamepad_getSubStickValue
/* 804D4C50  3C 60 80 64 */	lis r3, lit_702@ha /* 0x8064656C@ha */
/* 804D4C54  C0 03 65 6C */	lfs f0, lit_702@l(r3)  /* 0x8064656C@l */
/* 804D4C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D4C5C  40 81 00 AC */	ble lbl_804D4D08
/* 804D4C60  4B B3 1D ED */	bl JW_JUTGamepad_getSubStickAngle
/* 804D4C64  7C 60 07 35 */	extsh. r0, r3
/* 804D4C68  41 80 00 58 */	blt lbl_804D4CC0
/* 804D4C6C  7C 60 07 34 */	extsh r0, r3
/* 804D4C70  2C 00 10 00 */	cmpwi r0, 0x1000
/* 804D4C74  40 80 00 0C */	bge lbl_804D4C80
/* 804D4C78  38 60 00 06 */	li r3, 6
/* 804D4C7C  48 00 00 90 */	b lbl_804D4D0C
lbl_804D4C80:
/* 804D4C80  2C 00 30 00 */	cmpwi r0, 0x3000
/* 804D4C84  40 80 00 0C */	bge lbl_804D4C90
/* 804D4C88  38 60 00 07 */	li r3, 7
/* 804D4C8C  48 00 00 80 */	b lbl_804D4D0C
lbl_804D4C90:
/* 804D4C90  2C 00 50 00 */	cmpwi r0, 0x5000
/* 804D4C94  40 80 00 0C */	bge lbl_804D4CA0
/* 804D4C98  38 60 00 01 */	li r3, 1
/* 804D4C9C  48 00 00 70 */	b lbl_804D4D0C
lbl_804D4CA0:
/* 804D4CA0  38 80 70 00 */	li r4, 0x7000
/* 804D4CA4  7C 80 02 78 */	xor r0, r4, r0
/* 804D4CA8  7C 03 0E 70 */	srawi r3, r0, 1
/* 804D4CAC  7C 00 20 38 */	and r0, r0, r4
/* 804D4CB0  7C 00 18 50 */	subf r0, r0, r3
/* 804D4CB4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 804D4CB8  38 63 00 03 */	addi r3, r3, 3
/* 804D4CBC  48 00 00 50 */	b lbl_804D4D0C
lbl_804D4CC0:
/* 804D4CC0  7C 60 07 34 */	extsh r0, r3
/* 804D4CC4  2C 00 F0 00 */	cmpwi r0, -4096
/* 804D4CC8  40 81 00 0C */	ble lbl_804D4CD4
/* 804D4CCC  38 60 00 06 */	li r3, 6
/* 804D4CD0  48 00 00 3C */	b lbl_804D4D0C
lbl_804D4CD4:
/* 804D4CD4  2C 00 D0 00 */	cmpwi r0, -12288
/* 804D4CD8  40 81 00 0C */	ble lbl_804D4CE4
/* 804D4CDC  38 60 00 08 */	li r3, 8
/* 804D4CE0  48 00 00 2C */	b lbl_804D4D0C
lbl_804D4CE4:
/* 804D4CE4  2C 00 B0 00 */	cmpwi r0, -20480
/* 804D4CE8  40 81 00 0C */	ble lbl_804D4CF4
/* 804D4CEC  38 60 00 02 */	li r3, 2
/* 804D4CF0  48 00 00 1C */	b lbl_804D4D0C
lbl_804D4CF4:
/* 804D4CF4  2C 00 90 00 */	cmpwi r0, -28672
/* 804D4CF8  38 60 00 03 */	li r3, 3
/* 804D4CFC  40 81 00 10 */	ble lbl_804D4D0C
/* 804D4D00  38 60 00 05 */	li r3, 5
/* 804D4D04  48 00 00 08 */	b lbl_804D4D0C
lbl_804D4D08:
/* 804D4D08  38 60 00 00 */	li r3, 0
lbl_804D4D0C:
/* 804D4D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D4D14  7C 08 03 A6 */	mtlr r0
/* 804D4D18  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4D1C  4E 80 00 20 */	blr 
