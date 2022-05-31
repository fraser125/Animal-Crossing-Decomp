lbl_8056FC18:
/* 8056FC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FC1C  7C 08 02 A6 */	mflr r0
/* 8056FC20  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056FC24  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056FC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FC2C  3C 84 00 02 */	addis r4, r4, 2
/* 8056FC30  80 84 60 AC */	lwz r4, 0x60ac(r4)
/* 8056FC34  28 04 00 00 */	cmplwi r4, 0
/* 8056FC38  41 82 00 24 */	beq lbl_8056FC5C
/* 8056FC3C  80 04 00 04 */	lwz r0, 4(r4)
/* 8056FC40  2C 00 00 01 */	cmpwi r0, 1
/* 8056FC44  40 82 00 18 */	bne lbl_8056FC5C
/* 8056FC48  80 84 00 00 */	lwz r4, 0(r4)
/* 8056FC4C  28 04 00 00 */	cmplwi r4, 0
/* 8056FC50  41 82 00 0C */	beq lbl_8056FC5C
/* 8056FC54  38 00 00 01 */	li r0, 1
/* 8056FC58  90 04 01 98 */	stw r0, 0x198(r4)
lbl_8056FC5C:
/* 8056FC5C  38 80 00 04 */	li r4, 4
/* 8056FC60  38 A0 00 02 */	li r5, 2
/* 8056FC64  38 C0 00 03 */	li r6, 3
/* 8056FC68  38 E0 00 00 */	li r7, 0
/* 8056FC6C  39 00 08 C0 */	li r8, 0x8c0
/* 8056FC70  39 20 05 14 */	li r9, 0x514
/* 8056FC74  4B FF F3 75 */	bl func_8056EFE8
/* 8056FC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FC7C  7C 08 03 A6 */	mtlr r0
/* 8056FC80  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FC84  4E 80 00 20 */	blr 
