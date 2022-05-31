lbl_80429F24:
/* 80429F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429F28  7C 08 02 A6 */	mflr r0
/* 80429F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429F34  7C 7F 1B 78 */	mr r31, r3
/* 80429F38  4B FF FC B1 */	bl aHN0_normal_wait_init
/* 80429F3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80429F40  7F E3 FB 78 */	mr r3, r31
/* 80429F44  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80429F48  38 80 00 05 */	li r4, 5
/* 80429F4C  3C C5 00 02 */	addis r6, r5, 2
/* 80429F50  38 A0 00 00 */	li r5, 0
/* 80429F54  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80429F58  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80429F5C  7D 89 03 A6 */	mtctr r12
/* 80429F60  4E 80 04 21 */	bctrl 
/* 80429F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429F6C  7C 08 03 A6 */	mtlr r0
/* 80429F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80429F74  4E 80 00 20 */	blr 
