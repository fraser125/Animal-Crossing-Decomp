lbl_804F6924:
/* 804F6924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6928  7C 08 02 A6 */	mflr r0
/* 804F692C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F6934  7C 7F 1B 78 */	mr r31, r3
/* 804F6938  80 03 0D 30 */	lwz r0, 0xd30(r3)
/* 804F693C  2C 00 00 00 */	cmpwi r0, 0
/* 804F6940  41 82 00 34 */	beq lbl_804F6974
/* 804F6944  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F6948  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804F694C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804F6950  38 60 00 70 */	li r3, 0x70
/* 804F6954  3C A4 00 02 */	addis r5, r4, 2
/* 804F6958  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804F695C  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804F6960  81 85 00 04 */	lwz r12, 4(r5)
/* 804F6964  7D 89 03 A6 */	mtctr r12
/* 804F6968  4E 80 04 21 */	bctrl 
/* 804F696C  38 00 00 00 */	li r0, 0
/* 804F6970  90 1F 0D 30 */	stw r0, 0xd30(r31)
lbl_804F6974:
/* 804F6974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F697C  7C 08 03 A6 */	mtlr r0
/* 804F6980  38 21 00 10 */	addi r1, r1, 0x10
/* 804F6984  4E 80 00 20 */	blr 