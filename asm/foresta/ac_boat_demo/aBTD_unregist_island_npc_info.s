lbl_80414FB8:
/* 80414FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80414FBC  7C 08 02 A6 */	mflr r0
/* 80414FC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80414FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80414FC8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80414FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80414FD0  3F E3 00 02 */	addis r31, r3, 2
/* 80414FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80414FD8  A0 7F 64 E4 */	lhz r3, 0x64e4(r31)
/* 80414FDC  88 9F 3C D9 */	lbz r4, 0x3cd9(r31)
/* 80414FE0  88 BF 3C DA */	lbz r5, 0x3cda(r31)
/* 80414FE4  3B FF 64 E4 */	addi r31, r31, 0x64e4
/* 80414FE8  4B F9 38 69 */	bl mFI_UnregistMoveActorList
/* 80414FEC  7C 7E 1B 78 */	mr r30, r3
/* 80414FF0  2C 1E 00 01 */	cmpwi r30, 1
/* 80414FF4  40 82 00 24 */	bne lbl_80415018
/* 80414FF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80414FFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80415000  3C 63 00 02 */	addis r3, r3, 2
/* 80415004  38 63 34 40 */	addi r3, r3, 0x3440
/* 80415008  4B FC 25 59 */	bl mNPS_reset_schedule_area
/* 8041500C  7F E3 FB 78 */	mr r3, r31
/* 80415010  38 80 00 01 */	li r4, 1
/* 80415014  4B FB AA 15 */	bl mNpc_InitNpcList
lbl_80415018:
/* 80415018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041501C  7F C3 F3 78 */	mr r3, r30
/* 80415020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415024  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415028  7C 08 03 A6 */	mtlr r0
/* 8041502C  38 21 00 10 */	addi r1, r1, 0x10
/* 80415030  4E 80 00 20 */	blr 
