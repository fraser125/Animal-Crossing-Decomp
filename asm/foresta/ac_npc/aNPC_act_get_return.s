lbl_8053482C:
/* 8053482C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534830  7C 08 02 A6 */	mflr r0
/* 80534834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053483C  93 C1 00 08 */	stw r30, 8(r1)
/* 80534840  7C 7E 1B 78 */	mr r30, r3
/* 80534844  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80534848  2C 00 00 01 */	cmpwi r0, 1
/* 8053484C  40 82 00 3C */	bne lbl_80534888
/* 80534850  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80534854  38 80 00 02 */	li r4, 2
/* 80534858  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8053485C  3F E5 00 02 */	addis r31, r5, 2
/* 80534860  80 BF 60 94 */	lwz r5, 0x6094(r31)
/* 80534864  81 85 00 08 */	lwz r12, 8(r5)
/* 80534868  7D 89 03 A6 */	mtctr r12
/* 8053486C  4E 80 04 21 */	bctrl 
/* 80534870  80 BF 60 94 */	lwz r5, 0x6094(r31)
/* 80534874  38 00 00 07 */	li r0, 7
/* 80534878  7F C3 F3 78 */	mr r3, r30
/* 8053487C  38 80 00 0A */	li r4, 0xa
/* 80534880  98 05 00 0D */	stb r0, 0xd(r5)
/* 80534884  4B FF F8 7D */	bl func_80534100
lbl_80534888:
/* 80534888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053488C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80534890  83 C1 00 08 */	lwz r30, 8(r1)
/* 80534894  7C 08 03 A6 */	mtlr r0
/* 80534898  38 21 00 10 */	addi r1, r1, 0x10
/* 8053489C  4E 80 00 20 */	blr 
