lbl_804BEF34:
/* 804BEF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BEF38  7C 08 02 A6 */	mflr r0
/* 804BEF3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BEF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BEF44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BEF48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BEF4C  3F E3 00 02 */	addis r31, r3, 2
/* 804BEF50  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804BEF54  28 03 00 00 */	cmplwi r3, 0
/* 804BEF58  41 82 00 10 */	beq lbl_804BEF68
/* 804BEF5C  4B EF D5 59 */	bl zelda_free
/* 804BEF60  38 00 00 00 */	li r0, 0
/* 804BEF64  90 1F 60 80 */	stw r0, 0x6080(r31)
lbl_804BEF68:
/* 804BEF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BEF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BEF70  7C 08 03 A6 */	mtlr r0
/* 804BEF74  38 21 00 10 */	addi r1, r1, 0x10
/* 804BEF78  4E 80 00 20 */	blr 
