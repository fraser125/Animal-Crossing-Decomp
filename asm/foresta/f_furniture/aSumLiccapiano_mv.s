lbl_80638E68:
/* 80638E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638E6C  7C 08 02 A6 */	mflr r0
/* 80638E70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80638E74  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80638E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638E7C  3C A5 00 02 */	addis r5, r5, 2
/* 80638E80  80 A5 60 8C */	lwz r5, 0x608c(r5)
/* 80638E84  28 05 00 00 */	cmplwi r5, 0
/* 80638E88  41 82 00 14 */	beq lbl_80638E9C
/* 80638E8C  81 85 00 64 */	lwz r12, 0x64(r5)
/* 80638E90  38 A0 00 04 */	li r5, 4
/* 80638E94  7D 89 03 A6 */	mtctr r12
/* 80638E98  4E 80 04 21 */	bctrl 
lbl_80638E9C:
/* 80638E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638EA0  7C 08 03 A6 */	mtlr r0
/* 80638EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80638EA8  4E 80 00 20 */	blr 