lbl_805BCEF8:
/* 805BCEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BCEFC  7C 08 02 A6 */	mflr r0
/* 805BCF00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BCF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCF08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BCF0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BCF10  3F E3 00 02 */	addis r31, r3, 2
/* 805BCF14  80 7F 60 98 */	lwz r3, 0x6098(r31)
/* 805BCF18  28 03 00 00 */	cmplwi r3, 0
/* 805BCF1C  41 82 00 54 */	beq lbl_805BCF70
/* 805BCF20  38 00 00 09 */	li r0, 9
/* 805BCF24  38 83 00 14 */	addi r4, r3, 0x14
/* 805BCF28  38 A3 00 5C */	addi r5, r3, 0x5c
/* 805BCF2C  38 60 00 00 */	li r3, 0
/* 805BCF30  7C 09 03 A6 */	mtctr r0
lbl_805BCF34:
/* 805BCF34  80 04 00 00 */	lwz r0, 0(r4)
/* 805BCF38  28 00 00 00 */	cmplwi r0, 0
/* 805BCF3C  41 82 00 08 */	beq lbl_805BCF44
/* 805BCF40  90 64 00 00 */	stw r3, 0(r4)
lbl_805BCF44:
/* 805BCF44  80 05 00 00 */	lwz r0, 0(r5)
/* 805BCF48  28 00 00 00 */	cmplwi r0, 0
/* 805BCF4C  41 82 00 08 */	beq lbl_805BCF54
/* 805BCF50  90 65 00 00 */	stw r3, 0(r5)
lbl_805BCF54:
/* 805BCF54  38 84 00 04 */	addi r4, r4, 4
/* 805BCF58  38 A5 00 08 */	addi r5, r5, 8
/* 805BCF5C  42 00 FF D8 */	bdnz lbl_805BCF34
/* 805BCF60  80 7F 60 98 */	lwz r3, 0x6098(r31)
/* 805BCF64  4B DF F5 51 */	bl zelda_free
/* 805BCF68  38 00 00 00 */	li r0, 0
/* 805BCF6C  90 1F 60 98 */	stw r0, 0x6098(r31)
lbl_805BCF70:
/* 805BCF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCF74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCF78  7C 08 03 A6 */	mtlr r0
/* 805BCF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCF80  4E 80 00 20 */	blr 
