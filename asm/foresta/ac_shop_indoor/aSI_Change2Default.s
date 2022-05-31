lbl_8049F224:
/* 8049F224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F228  7C 08 02 A6 */	mflr r0
/* 8049F22C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F230  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F234  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049F238  3C 63 00 02 */	addis r3, r3, 2
/* 8049F23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049F240  80 63 60 7C */	lwz r3, 0x607c(r3)
/* 8049F244  80 63 00 00 */	lwz r3, 0(r3)
/* 8049F248  28 03 00 00 */	cmplwi r3, 0
/* 8049F24C  41 82 00 5C */	beq lbl_8049F2A8
/* 8049F250  A8 03 01 90 */	lha r0, 0x190(r3)
/* 8049F254  3C 60 80 69 */	lis r3, aSI_wall_default_table@ha /* 0x8068E3D0@ha */
/* 8049F258  38 63 E3 D0 */	addi r3, r3, aSI_wall_default_table@l /* 0x8068E3D0@l */
/* 8049F25C  3C 80 81 1D */	lis r4, aSI_se_mode@ha /* 0x811CF5B8@ha */
/* 8049F260  54 1F 08 3C */	slwi r31, r0, 1
/* 8049F264  38 A0 00 01 */	li r5, 1
/* 8049F268  7C 03 FA AE */	lhax r0, r3, r31
/* 8049F26C  90 A4 F5 B8 */	stw r5, aSI_se_mode@l(r4)  /* 0x811CF5B8@l */
/* 8049F270  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8049F274  38 03 27 00 */	addi r0, r3, 0x2700
/* 8049F278  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8049F27C  4B FF FF 19 */	bl aSI_ChangeWall
/* 8049F280  3C 60 80 69 */	lis r3, aSI_floor_default_table@ha /* 0x8068E3DC@ha */
/* 8049F284  38 63 E3 DC */	addi r3, r3, aSI_floor_default_table@l /* 0x8068E3DC@l */
/* 8049F288  7C 03 FA AE */	lhax r0, r3, r31
/* 8049F28C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8049F290  38 03 26 00 */	addi r0, r3, 0x2600
/* 8049F294  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8049F298  4B FF FE 5D */	bl aSI_ChangeCarpet
/* 8049F29C  3C 60 81 1D */	lis r3, aSI_se_mode@ha /* 0x811CF5B8@ha */
/* 8049F2A0  38 00 00 00 */	li r0, 0
/* 8049F2A4  90 03 F5 B8 */	stw r0, aSI_se_mode@l(r3)  /* 0x811CF5B8@l */
lbl_8049F2A8:
/* 8049F2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049F2B0  7C 08 03 A6 */	mtlr r0
/* 8049F2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F2B8  4E 80 00 20 */	blr 
