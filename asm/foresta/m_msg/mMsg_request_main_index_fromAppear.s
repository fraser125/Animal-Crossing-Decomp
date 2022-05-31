lbl_803C2774:
/* 803C2774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2778  7C 08 02 A6 */	mflr r0
/* 803C277C  2C 05 00 00 */	cmpwi r5, 0
/* 803C2780  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2788  7C 7F 1B 78 */	mr r31, r3
/* 803C278C  41 82 00 28 */	beq lbl_803C27B4
/* 803C2790  38 80 00 00 */	li r4, 0
/* 803C2794  38 A0 00 05 */	li r5, 5
/* 803C2798  4B FF D4 69 */	bl mMsg_request_main_cursol
/* 803C279C  2C 03 00 00 */	cmpwi r3, 0
/* 803C27A0  41 82 00 14 */	beq lbl_803C27B4
/* 803C27A4  3C 80 80 64 */	lis r4, lit_926@ha /* 0x8064261C@ha */
/* 803C27A8  7F E3 FB 78 */	mr r3, r31
/* 803C27AC  C0 24 26 1C */	lfs f1, lit_926@l(r4)  /* 0x8064261C@l */
/* 803C27B0  4B FF DF 41 */	bl mMsg_SetTimer
lbl_803C27B4:
/* 803C27B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C27B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C27BC  7C 08 03 A6 */	mtlr r0
/* 803C27C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C27C4  4E 80 00 20 */	blr 
