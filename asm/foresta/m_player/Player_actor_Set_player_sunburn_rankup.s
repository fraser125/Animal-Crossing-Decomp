lbl_804DE8F4:
/* 804DE8F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE8F8  7C 08 02 A6 */	mflr r0
/* 804DE8FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE900  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DE904  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DE908  7C 7E 1B 78 */	mr r30, r3
/* 804DE90C  80 03 12 24 */	lwz r0, 0x1224(r3)
/* 804DE910  2C 00 00 00 */	cmpwi r0, 0
/* 804DE914  41 82 00 74 */	beq lbl_804DE988
/* 804DE918  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804DE91C  38 61 00 08 */	addi r3, r1, 8
/* 804DE920  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804DE924  3C 84 00 02 */	addis r4, r4, 2
/* 804DE928  83 E4 61 3C */	lwz r31, 0x613c(r4)
/* 804DE92C  38 84 61 20 */	addi r4, r4, 0x6120
/* 804DE930  4B F1 4B 31 */	bl mTM_set_renew_time
/* 804DE934  88 7F 23 C8 */	lbz r3, 0x23c8(r31)
/* 804DE938  38 03 00 01 */	addi r0, r3, 1
/* 804DE93C  98 1F 23 C8 */	stb r0, 0x23c8(r31)
/* 804DE940  88 1F 23 C8 */	lbz r0, 0x23c8(r31)
/* 804DE944  7C 00 07 74 */	extsb r0, r0
/* 804DE948  2C 00 00 09 */	cmpwi r0, 9
/* 804DE94C  41 80 00 0C */	blt lbl_804DE958
/* 804DE950  38 00 00 08 */	li r0, 8
/* 804DE954  98 1F 23 C8 */	stb r0, 0x23c8(r31)
lbl_804DE958:
/* 804DE958  80 01 00 08 */	lwz r0, 8(r1)
/* 804DE95C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE960  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE964  38 A0 00 02 */	li r5, 2
/* 804DE968  90 1F 23 C4 */	stw r0, 0x23c4(r31)
/* 804DE96C  3C 83 00 03 */	addis r4, r3, 3
/* 804DE970  38 00 00 00 */	li r0, 0
/* 804DE974  38 60 00 01 */	li r3, 1
/* 804DE978  98 BF 23 C9 */	stb r5, 0x23c9(r31)
/* 804DE97C  B0 04 DB A6 */	sth r0, -0x245a(r4)
/* 804DE980  90 1E 12 24 */	stw r0, 0x1224(r30)
/* 804DE984  48 00 00 08 */	b lbl_804DE98C
lbl_804DE988:
/* 804DE988  38 60 00 00 */	li r3, 0
lbl_804DE98C:
/* 804DE98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE990  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DE994  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DE998  7C 08 03 A6 */	mtlr r0
/* 804DE99C  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE9A0  4E 80 00 20 */	blr 
