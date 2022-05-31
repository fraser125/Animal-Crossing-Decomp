lbl_8062CB40:
/* 8062CB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062CB44  7C 08 02 A6 */	mflr r0
/* 8062CB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062CB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062CB50  93 C1 00 08 */	stw r30, 8(r1)
/* 8062CB54  7C 7E 1B 78 */	mr r30, r3
/* 8062CB58  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8062CB5C  83 FE 02 04 */	lwz r31, 0x204(r30)
/* 8062CB60  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8062CB64  4B D6 93 AD */	bl chkTrigger
/* 8062CB68  2C 03 00 00 */	cmpwi r3, 0
/* 8062CB6C  41 82 00 20 */	beq lbl_8062CB8C
/* 8062CB70  3C 60 80 6D */	lis r3, data_806D4A80@ha /* 0x806D4A80@ha */
/* 8062CB74  57 E0 10 3A */	slwi r0, r31, 2
/* 8062CB78  38 83 4A 80 */	addi r4, r3, data_806D4A80@l /* 0x806D4A80@l */
/* 8062CB7C  7F C3 F3 78 */	mr r3, r30
/* 8062CB80  7D 84 00 2E */	lwzx r12, r4, r0
/* 8062CB84  7D 89 03 A6 */	mtctr r12
/* 8062CB88  4E 80 04 21 */	bctrl 
lbl_8062CB8C:
/* 8062CB8C  38 60 00 10 */	li r3, 0x10
/* 8062CB90  4B D6 93 81 */	bl chkTrigger
/* 8062CB94  2C 03 00 00 */	cmpwi r3, 0
/* 8062CB98  40 82 00 24 */	bne lbl_8062CBBC
/* 8062CB9C  38 60 08 00 */	li r3, 0x800
/* 8062CBA0  4B D6 93 71 */	bl chkTrigger
/* 8062CBA4  2C 03 00 00 */	cmpwi r3, 0
/* 8062CBA8  40 82 00 14 */	bne lbl_8062CBBC
/* 8062CBAC  38 60 04 00 */	li r3, 0x400
/* 8062CBB0  4B D6 93 61 */	bl chkTrigger
/* 8062CBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8062CBB8  41 82 00 3C */	beq lbl_8062CBF4
lbl_8062CBBC:
/* 8062CBBC  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 8062CBC0  38 00 00 00 */	li r0, 0
/* 8062CBC4  90 1E 02 00 */	stw r0, 0x200(r30)
/* 8062CBC8  38 63 02 0C */	addi r3, r3, 0x20c
/* 8062CBCC  7C 7E 1A 14 */	add r3, r30, r3
/* 8062CBD0  4B FF FE 1D */	bl save_menu_reset_cursor_col
/* 8062CBD4  80 7E 02 04 */	lwz r3, 0x204(r30)
/* 8062CBD8  38 03 00 01 */	addi r0, r3, 1
/* 8062CBDC  90 1E 02 04 */	stw r0, 0x204(r30)
/* 8062CBE0  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 8062CBE4  2C 00 00 02 */	cmpwi r0, 2
/* 8062CBE8  41 80 00 0C */	blt lbl_8062CBF4
/* 8062CBEC  38 00 00 00 */	li r0, 0
/* 8062CBF0  90 1E 02 04 */	stw r0, 0x204(r30)
lbl_8062CBF4:
/* 8062CBF4  38 60 40 00 */	li r3, 0x4000
/* 8062CBF8  4B D6 93 19 */	bl chkTrigger
/* 8062CBFC  2C 03 00 00 */	cmpwi r3, 0
/* 8062CC00  41 82 00 0C */	beq lbl_8062CC0C
/* 8062CC04  38 00 00 03 */	li r0, 3
/* 8062CC08  90 1E 02 08 */	stw r0, 0x208(r30)
lbl_8062CC0C:
/* 8062CC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062CC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062CC14  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062CC18  7C 08 03 A6 */	mtlr r0
/* 8062CC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062CC20  4E 80 00 20 */	blr 
