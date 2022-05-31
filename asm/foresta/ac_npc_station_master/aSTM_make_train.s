lbl_8057FBB0:
/* 8057FBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FBB4  7C 08 02 A6 */	mflr r0
/* 8057FBB8  38 A0 00 01 */	li r5, 1
/* 8057FBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057FBC4  7C 9F 23 78 */	mr r31, r4
/* 8057FBC8  38 80 58 0B */	li r4, 0x580b
/* 8057FBCC  93 C1 00 08 */	stw r30, 8(r1)
/* 8057FBD0  7C 7E 1B 78 */	mr r30, r3
/* 8057FBD4  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 8057FBD8  4B DF 61 69 */	bl Actor_info_fgName_search
/* 8057FBDC  28 03 00 00 */	cmplwi r3, 0
/* 8057FBE0  41 82 00 24 */	beq lbl_8057FC04
/* 8057FBE4  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 8057FBE8  2C 00 00 05 */	cmpwi r0, 5
/* 8057FBEC  41 81 00 18 */	bgt lbl_8057FC04
/* 8057FBF0  90 7E 09 98 */	stw r3, 0x998(r30)
/* 8057FBF4  7F C3 F3 78 */	mr r3, r30
/* 8057FBF8  7F E4 FB 78 */	mr r4, r31
/* 8057FBFC  38 A0 00 0C */	li r5, 0xc
/* 8057FC00  48 00 07 A5 */	bl aSTM_setup_think_proc
lbl_8057FC04:
/* 8057FC04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057FC08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057FC0C  3C 63 00 03 */	addis r3, r3, 3
/* 8057FC10  88 03 88 7D */	lbz r0, -0x7783(r3)
/* 8057FC14  28 00 00 01 */	cmplwi r0, 1
/* 8057FC18  40 82 00 10 */	bne lbl_8057FC28
/* 8057FC1C  7F C3 F3 78 */	mr r3, r30
/* 8057FC20  38 80 00 3F */	li r4, 0x3f
/* 8057FC24  4B FF FA 51 */	bl func_8057F674
lbl_8057FC28:
/* 8057FC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057FC30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057FC34  7C 08 03 A6 */	mtlr r0
/* 8057FC38  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FC3C  4E 80 00 20 */	blr 
