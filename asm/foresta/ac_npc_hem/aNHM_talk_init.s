lbl_80592834:
/* 80592834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592838  7C 08 02 A6 */	mflr r0
/* 8059283C  38 A0 00 00 */	li r5, 0
/* 80592840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592844  A8 83 09 A2 */	lha r4, 0x9a2(r3)
/* 80592848  38 04 FF FF */	addi r0, r4, -1
/* 8059284C  B0 03 09 A2 */	sth r0, 0x9a2(r3)
/* 80592850  A8 03 09 A2 */	lha r0, 0x9a2(r3)
/* 80592854  2C 00 00 00 */	cmpwi r0, 0
/* 80592858  41 81 00 20 */	bgt lbl_80592878
/* 8059285C  3C A0 80 3C */	lis r5, none_proc1@ha /* 0x803BB54C@ha */
/* 80592860  38 80 00 00 */	li r4, 0
/* 80592864  38 05 B5 4C */	addi r0, r5, none_proc1@l /* 0x803BB54C@l */
/* 80592868  90 03 09 64 */	stw r0, 0x964(r3)
/* 8059286C  4B FF FF 2D */	bl aNHM_change_talk_proc
/* 80592870  4B E0 7B 45 */	bl mDemo_Set_ListenAble
/* 80592874  38 A0 00 01 */	li r5, 1
lbl_80592878:
/* 80592878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059287C  7C A3 2B 78 */	mr r3, r5
/* 80592880  7C 08 03 A6 */	mtlr r0
/* 80592884  38 21 00 10 */	addi r1, r1, 0x10
/* 80592888  4E 80 00 20 */	blr 