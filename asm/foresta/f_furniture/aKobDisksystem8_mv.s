lbl_80630D44:
/* 80630D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630D48  7C 08 02 A6 */	mflr r0
/* 80630D4C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80630D50  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80630D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630D58  3C C6 00 02 */	addis r6, r6, 2
/* 80630D5C  80 C6 60 8C */	lwz r6, 0x608c(r6)
/* 80630D60  28 06 00 00 */	cmplwi r6, 0
/* 80630D64  41 82 00 18 */	beq lbl_80630D7C
/* 80630D68  81 86 00 54 */	lwz r12, 0x54(r6)
/* 80630D6C  38 C0 00 00 */	li r6, 0
/* 80630D70  38 E0 FF FF */	li r7, -1
/* 80630D74  7D 89 03 A6 */	mtctr r12
/* 80630D78  4E 80 04 21 */	bctrl 
lbl_80630D7C:
/* 80630D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630D80  7C 08 03 A6 */	mtlr r0
/* 80630D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80630D88  4E 80 00 20 */	blr 
