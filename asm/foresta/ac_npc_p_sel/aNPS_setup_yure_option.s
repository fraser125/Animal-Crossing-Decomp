lbl_80566A28:
/* 80566A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566A2C  7C 08 02 A6 */	mflr r0
/* 80566A30  38 60 00 04 */	li r3, 4
/* 80566A34  38 80 00 09 */	li r4, 9
/* 80566A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566A40  4B E3 1A 3D */	bl mDemo_Get_OrderValue
/* 80566A44  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80566A48  38 60 00 00 */	li r3, 0
/* 80566A4C  41 82 00 84 */	beq lbl_80566AD0
/* 80566A50  3B E0 00 01 */	li r31, 1
/* 80566A54  4B E1 CA ED */	bl func_80383540
/* 80566A58  4B E1 D1 15 */	bl mChoice_Get_ChoseNum
/* 80566A5C  2C 03 00 01 */	cmpwi r3, 1
/* 80566A60  41 82 00 48 */	beq lbl_80566AA8
/* 80566A64  40 80 00 48 */	bge lbl_80566AAC
/* 80566A68  2C 03 00 00 */	cmpwi r3, 0
/* 80566A6C  40 80 00 08 */	bge lbl_80566A74
/* 80566A70  48 00 00 3C */	b lbl_80566AAC
lbl_80566A74:
/* 80566A74  3C 60 80 65 */	lis r3, lit_503@ha /* 0x806497F0@ha */
/* 80566A78  3B E0 00 00 */	li r31, 0
/* 80566A7C  38 83 97 F0 */	addi r4, r3, lit_503@l /* 0x806497F0@l */
/* 80566A80  38 60 00 4B */	li r3, 0x4b
/* 80566A84  C0 24 00 00 */	lfs f1, 0(r4)
/* 80566A88  38 80 00 00 */	li r4, 0
/* 80566A8C  38 A0 00 01 */	li r5, 1
/* 80566A90  38 C0 00 05 */	li r6, 5
/* 80566A94  38 E0 00 00 */	li r7, 0
/* 80566A98  39 00 00 10 */	li r8, 0x10
/* 80566A9C  39 20 00 2D */	li r9, 0x2d
/* 80566AA0  4B E9 D4 85 */	bl mVibctl_entry
/* 80566AA4  48 00 00 08 */	b lbl_80566AAC
lbl_80566AA8:
/* 80566AA8  3B E0 00 01 */	li r31, 1
lbl_80566AAC:
/* 80566AAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80566AB0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80566AB4  3C A4 00 02 */	addis r5, r4, 2
/* 80566AB8  38 60 00 04 */	li r3, 4
/* 80566ABC  9B E5 0F 12 */	stb r31, 0xf12(r5)
/* 80566AC0  38 80 00 09 */	li r4, 9
/* 80566AC4  38 A0 00 00 */	li r5, 0
/* 80566AC8  4B E3 19 71 */	bl mDemo_Set_OrderValue
/* 80566ACC  38 60 00 01 */	li r3, 1
lbl_80566AD0:
/* 80566AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566AD8  7C 08 03 A6 */	mtlr r0
/* 80566ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80566AE0  4E 80 00 20 */	blr 
