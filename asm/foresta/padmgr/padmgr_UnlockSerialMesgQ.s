lbl_80407C48:
/* 80407C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80407C4C  7C 08 02 A6 */	mflr r0
/* 80407C50  3C 80 80 66 */	lis r4, data_8065F038@ha /* 0x8065F038@ha */
/* 80407C54  38 A0 00 01 */	li r5, 1
/* 80407C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80407C5C  80 C4 F0 38 */	lwz r6, data_8065F038@l(r4)  /* 0x8065F038@l */
/* 80407C60  7C 64 1B 78 */	mr r4, r3
/* 80407C64  38 66 00 4C */	addi r3, r6, 0x4c
/* 80407C68  4B C5 84 D5 */	bl osSendMesg
/* 80407C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80407C70  7C 08 03 A6 */	mtlr r0
/* 80407C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80407C78  4E 80 00 20 */	blr 
