lbl_804C634C:
/* 804C634C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6350  7C 08 02 A6 */	mflr r0
/* 804C6354  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C6358  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C635C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C6360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C6364  3F E3 00 02 */	addis r31, r3, 2
/* 804C6368  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804C636C  28 03 00 00 */	cmplwi r3, 0
/* 804C6370  41 82 00 10 */	beq lbl_804C6380
/* 804C6374  4B EF 61 41 */	bl zelda_free
/* 804C6378  38 00 00 00 */	li r0, 0
/* 804C637C  90 1F 60 80 */	stw r0, 0x6080(r31)
lbl_804C6380:
/* 804C6380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C6388  7C 08 03 A6 */	mtlr r0
/* 804C638C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6390  4E 80 00 20 */	blr 
