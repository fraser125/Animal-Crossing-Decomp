lbl_804B00B8:
/* 804B00B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B00BC  7C 08 02 A6 */	mflr r0
/* 804B00C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B00C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B00C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B00CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B00D0  3F E3 00 02 */	addis r31, r3, 2
/* 804B00D4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B00D8  28 03 00 00 */	cmplwi r3, 0
/* 804B00DC  41 82 00 10 */	beq lbl_804B00EC
/* 804B00E0  4B F0 C3 D5 */	bl zelda_free
/* 804B00E4  38 00 00 00 */	li r0, 0
/* 804B00E8  90 1F 60 80 */	stw r0, 0x6080(r31)
lbl_804B00EC:
/* 804B00EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B00F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B00F4  7C 08 03 A6 */	mtlr r0
/* 804B00F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804B00FC  4E 80 00 20 */	blr 
