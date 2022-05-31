lbl_804D579C:
/* 804D579C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D57A0  7C 08 02 A6 */	mflr r0
/* 804D57A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D57A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D57AC  7C 7F 1B 78 */	mr r31, r3
/* 804D57B0  4B EC 57 09 */	bl mEv_CheckTitleDemo
/* 804D57B4  2C 03 00 00 */	cmpwi r3, 0
/* 804D57B8  41 81 00 44 */	bgt lbl_804D57FC
/* 804D57BC  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804D57C0  38 00 00 00 */	li r0, 0
/* 804D57C4  2C 04 00 00 */	cmpwi r4, 0
/* 804D57C8  41 80 00 10 */	blt lbl_804D57D8
/* 804D57CC  2C 04 00 79 */	cmpwi r4, 0x79
/* 804D57D0  40 80 00 08 */	bge lbl_804D57D8
/* 804D57D4  38 00 00 01 */	li r0, 1
lbl_804D57D8:
/* 804D57D8  2C 00 00 00 */	cmpwi r0, 0
/* 804D57DC  41 82 00 20 */	beq lbl_804D57FC
/* 804D57E0  3C 60 80 64 */	lis r3, data_966@ha /* 0x806468F8@ha */
/* 804D57E4  88 1F 00 D6 */	lbz r0, 0xd6(r31)
/* 804D57E8  38 63 68 F8 */	addi r3, r3, data_966@l /* 0x806468F8@l */
/* 804D57EC  7C 63 20 AE */	lbzx r3, r3, r4
/* 804D57F0  7C 00 18 40 */	cmplw r0, r3
/* 804D57F4  41 82 00 08 */	beq lbl_804D57FC
/* 804D57F8  98 7F 00 D6 */	stb r3, 0xd6(r31)
lbl_804D57FC:
/* 804D57FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5804  7C 08 03 A6 */	mtlr r0
/* 804D5808  38 21 00 10 */	addi r1, r1, 0x10
/* 804D580C  4E 80 00 20 */	blr 
