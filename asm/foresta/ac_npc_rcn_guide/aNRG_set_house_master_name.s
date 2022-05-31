lbl_8056F07C:
/* 8056F07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F080  7C 08 02 A6 */	mflr r0
/* 8056F084  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F08C  4B E4 45 4D */	bl mHS_get_pl_no
/* 8056F090  1C 83 24 40 */	mulli r4, r3, 0x2440
/* 8056F094  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056F098  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8056F09C  7F E0 22 14 */	add r31, r0, r4
/* 8056F0A0  4B E5 06 09 */	bl func_803BF6A8
/* 8056F0A4  38 BF 00 20 */	addi r5, r31, 0x20
/* 8056F0A8  38 80 00 00 */	li r4, 0
/* 8056F0AC  38 C0 00 08 */	li r6, 8
/* 8056F0B0  4B E5 0B A5 */	bl mMsg_Set_free_str
/* 8056F0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F0B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F0BC  7C 08 03 A6 */	mtlr r0
/* 8056F0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F0C4  4E 80 00 20 */	blr 
