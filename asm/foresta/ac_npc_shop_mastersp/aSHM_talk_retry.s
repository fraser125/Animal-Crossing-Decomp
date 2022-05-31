lbl_8057D208:
/* 8057D208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D20C  7C 08 02 A6 */	mflr r0
/* 8057D210  38 80 00 09 */	li r4, 9
/* 8057D214  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D21C  7C 7F 1B 78 */	mr r31, r3
/* 8057D220  38 60 00 04 */	li r3, 4
/* 8057D224  4B E1 B2 59 */	bl mDemo_Get_OrderValue
/* 8057D228  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8057D22C  2C 00 00 02 */	cmpwi r0, 2
/* 8057D230  40 82 00 78 */	bne lbl_8057D2A8
/* 8057D234  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057D238  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057D23C  3C 63 00 02 */	addis r3, r3, 2
/* 8057D240  80 63 60 CC */	lwz r3, 0x60cc(r3)
/* 8057D244  28 03 00 00 */	cmplwi r3, 0
/* 8057D248  41 82 00 10 */	beq lbl_8057D258
/* 8057D24C  81 83 00 08 */	lwz r12, 8(r3)
/* 8057D250  7D 89 03 A6 */	mtctr r12
/* 8057D254  4E 80 04 21 */	bctrl 
lbl_8057D258:
/* 8057D258  4B E0 62 E9 */	bl func_80383540
/* 8057D25C  4B E0 69 11 */	bl mChoice_Get_ChoseNum
/* 8057D260  B0 7F 09 AC */	sth r3, 0x9ac(r31)
/* 8057D264  38 60 00 04 */	li r3, 4
/* 8057D268  38 80 00 09 */	li r4, 9
/* 8057D26C  38 A0 00 00 */	li r5, 0
/* 8057D270  4B E1 B1 C9 */	bl mDemo_Set_OrderValue
/* 8057D274  A8 1F 09 AC */	lha r0, 0x9ac(r31)
/* 8057D278  2C 00 00 01 */	cmpwi r0, 1
/* 8057D27C  41 82 00 20 */	beq lbl_8057D29C
/* 8057D280  40 80 00 28 */	bge lbl_8057D2A8
/* 8057D284  2C 00 00 00 */	cmpwi r0, 0
/* 8057D288  40 80 00 08 */	bge lbl_8057D290
/* 8057D28C  48 00 00 1C */	b lbl_8057D2A8
lbl_8057D290:
/* 8057D290  7F E3 FB 78 */	mr r3, r31
/* 8057D294  4B FF FD 61 */	bl fukubiki_before_process
/* 8057D298  48 00 00 10 */	b lbl_8057D2A8
lbl_8057D29C:
/* 8057D29C  7F E3 FB 78 */	mr r3, r31
/* 8057D2A0  38 80 00 06 */	li r4, 6
/* 8057D2A4  48 00 03 09 */	bl aSHM_change_talk_proc
lbl_8057D2A8:
/* 8057D2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D2B0  7C 08 03 A6 */	mtlr r0
/* 8057D2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D2B8  4E 80 00 20 */	blr 
