lbl_804BA738:
/* 804BA738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BA73C  7C 08 02 A6 */	mflr r0
/* 804BA740  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BA744  39 61 00 20 */	addi r11, r1, 0x20
/* 804BA748  4B BE 07 8D */	bl func_8009AED4
/* 804BA74C  7C 7D 1B 78 */	mr r29, r3
/* 804BA750  3B C0 00 00 */	li r30, 0
/* 804BA754  83 E3 00 00 */	lwz r31, 0(r3)
/* 804BA758  48 00 00 8C */	b lbl_804BA7E4
lbl_804BA75C:
/* 804BA75C  A8 7F 00 92 */	lha r3, 0x92(r31)
/* 804BA760  2C 03 00 00 */	cmpwi r3, 0
/* 804BA764  40 81 00 10 */	ble lbl_804BA774
/* 804BA768  38 03 FF FF */	addi r0, r3, -1
/* 804BA76C  B0 1F 00 92 */	sth r0, 0x92(r31)
/* 804BA770  48 00 00 6C */	b lbl_804BA7DC
lbl_804BA774:
/* 804BA774  A8 7F 00 80 */	lha r3, 0x80(r31)
/* 804BA778  2C 03 00 00 */	cmpwi r3, 0
/* 804BA77C  40 81 00 34 */	ble lbl_804BA7B0
/* 804BA780  38 03 FF FF */	addi r0, r3, -1
/* 804BA784  B0 1F 00 80 */	sth r0, 0x80(r31)
/* 804BA788  A8 1F 00 80 */	lha r0, 0x80(r31)
/* 804BA78C  2C 00 00 00 */	cmpwi r0, 0
/* 804BA790  40 82 00 4C */	bne lbl_804BA7DC
/* 804BA794  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804BA798  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804BA79C  41 82 00 40 */	beq lbl_804BA7DC
/* 804BA7A0  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BA7A4  38 60 00 2A */	li r3, 0x2a
/* 804BA7A8  48 17 38 01 */	bl sAdo_OngenTrgStart
/* 804BA7AC  48 00 00 30 */	b lbl_804BA7DC
lbl_804BA7B0:
/* 804BA7B0  80 1F 00 00 */	lwz r0, 0(r31)
/* 804BA7B4  28 00 00 00 */	cmplwi r0, 0
/* 804BA7B8  41 82 00 24 */	beq lbl_804BA7DC
/* 804BA7BC  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804BA7C0  38 7F 00 38 */	addi r3, r31, 0x38
/* 804BA7C4  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 804BA7C8  4B F0 06 F5 */	bl xyz_t_move
/* 804BA7CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 804BA7D0  7F E3 FB 78 */	mr r3, r31
/* 804BA7D4  7D 89 03 A6 */	mtctr r12
/* 804BA7D8  4E 80 04 21 */	bctrl 
lbl_804BA7DC:
/* 804BA7DC  3B DE 00 01 */	addi r30, r30, 1
/* 804BA7E0  3B FF 00 A8 */	addi r31, r31, 0xa8
lbl_804BA7E4:
/* 804BA7E4  A8 1D 00 04 */	lha r0, 4(r29)
/* 804BA7E8  7C 1E 00 00 */	cmpw r30, r0
/* 804BA7EC  41 80 FF 70 */	blt lbl_804BA75C
/* 804BA7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804BA7F4  4B BE 07 2D */	bl func_8009AF20
/* 804BA7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BA7FC  7C 08 03 A6 */	mtlr r0
/* 804BA800  38 21 00 20 */	addi r1, r1, 0x20
/* 804BA804  4E 80 00 20 */	blr 
