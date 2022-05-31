lbl_8040F1A8:
/* 8040F1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F1AC  7C 08 02 A6 */	mflr r0
/* 8040F1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F1B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040F1B8  7C 9F 23 78 */	mr r31, r4
/* 8040F1BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8040F1C0  7C 7E 1B 78 */	mr r30, r3
/* 8040F1C4  4B FF FE 9D */	bl Ac_Sample_Animation_Base
/* 8040F1C8  3C 80 80 64 */	lis r4, data_80643774@ha /* 0x80643774@ha */
/* 8040F1CC  7F C3 F3 78 */	mr r3, r30
/* 8040F1D0  C0 24 37 74 */	lfs f1, data_80643774@l(r4)  /* 0x80643774@l */
/* 8040F1D4  4B F6 4F FD */	bl func_803741D0
/* 8040F1D8  7F C3 F3 78 */	mr r3, r30
/* 8040F1DC  7F E4 FB 78 */	mr r4, r31
/* 8040F1E0  4B FF FD D9 */	bl Ac_Sample_Excute_Corect
/* 8040F1E4  7F C4 F3 78 */	mr r4, r30
/* 8040F1E8  38 60 00 07 */	li r3, 7
/* 8040F1EC  4B F8 B0 79 */	bl mDemo_Check
/* 8040F1F0  2C 03 00 00 */	cmpwi r3, 0
/* 8040F1F4  41 82 00 54 */	beq lbl_8040F248
/* 8040F1F8  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80643778@ha */
/* 8040F1FC  A8 9E 00 B6 */	lha r4, 0xb6(r30)
/* 8040F200  38 A3 37 78 */	addi r5, r3, lit_484@l /* 0x80643778@l */
/* 8040F204  38 7E 00 DE */	addi r3, r30, 0xde
/* 8040F208  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040F20C  38 A0 13 88 */	li r5, 0x1388
/* 8040F210  38 C0 00 64 */	li r6, 0x64
/* 8040F214  4B FA C0 FD */	bl add_calc_short_angle2
/* 8040F218  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8040F21C  7C 7F 1B 78 */	mr r31, r3
/* 8040F220  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8040F224  4B F8 B1 ED */	bl mDemo_Check_ListenAble
/* 8040F228  2C 03 00 00 */	cmpwi r3, 0
/* 8040F22C  40 82 00 24 */	bne lbl_8040F250
/* 8040F230  7F E3 FB 78 */	mr r3, r31
/* 8040F234  4B F8 B1 F1 */	bl mDemo_Check_DiffAngle_forTalk
/* 8040F238  2C 03 00 00 */	cmpwi r3, 0
/* 8040F23C  41 82 00 14 */	beq lbl_8040F250
/* 8040F240  4B F8 B1 75 */	bl mDemo_Set_ListenAble
/* 8040F244  48 00 00 0C */	b lbl_8040F250
lbl_8040F248:
/* 8040F248  38 00 00 00 */	li r0, 0
/* 8040F24C  90 1E 02 60 */	stw r0, 0x260(r30)
lbl_8040F250:
/* 8040F250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040F258  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040F25C  7C 08 03 A6 */	mtlr r0
/* 8040F260  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F264  4E 80 00 20 */	blr 
