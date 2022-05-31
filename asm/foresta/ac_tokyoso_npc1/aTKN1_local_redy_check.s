lbl_8058C6BC:
/* 8058C6BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C6C0  7C 08 02 A6 */	mflr r0
/* 8058C6C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C6C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C6CC  4B B0 E8 09 */	bl func_8009AED4
/* 8058C6D0  7C 7D 1B 78 */	mr r29, r3
/* 8058C6D4  7C 9E 23 78 */	mr r30, r4
/* 8058C6D8  38 60 00 0F */	li r3, 0xf
/* 8058C6DC  38 80 00 08 */	li r4, 8
/* 8058C6E0  4B E1 16 ED */	bl mEv_get_save_area
/* 8058C6E4  A0 9D 00 06 */	lhz r4, 6(r29)
/* 8058C6E8  7C 7F 1B 78 */	mr r31, r3
/* 8058C6EC  A0 C3 00 02 */	lhz r6, 2(r3)
/* 8058C6F0  38 A0 00 80 */	li r5, 0x80
/* 8058C6F4  3C 64 FF FF */	addis r3, r4, 0xffff
/* 8058C6F8  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058C6FC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058C700  7C A0 00 30 */	slw r0, r5, r0
/* 8058C704  7C C0 00 39 */	and. r0, r6, r0
/* 8058C708  41 82 00 A0 */	beq lbl_8058C7A8
/* 8058C70C  38 00 00 08 */	li r0, 8
/* 8058C710  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058C714  98 1D 09 AA */	stb r0, 0x9aa(r29)
/* 8058C718  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058C71C  3C 83 00 02 */	addis r4, r3, 2
/* 8058C720  7F A3 EB 78 */	mr r3, r29
/* 8058C724  A0 BD 00 06 */	lhz r5, 6(r29)
/* 8058C728  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058C72C  3C A5 FF FF */	addis r5, r5, 0xffff
/* 8058C730  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 8058C734  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 8058C738  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 8058C73C  7D 89 03 A6 */	mtctr r12
/* 8058C740  4E 80 04 21 */	bctrl 
/* 8058C744  7F A3 EB 78 */	mr r3, r29
/* 8058C748  7F C4 F3 78 */	mr r4, r30
/* 8058C74C  38 A0 00 01 */	li r5, 1
/* 8058C750  48 00 0D CD */	bl aTKN1_setup_think_proc
/* 8058C754  A0 7D 00 06 */	lhz r3, 6(r29)
/* 8058C758  38 C0 00 80 */	li r6, 0x80
/* 8058C75C  A0 FF 00 02 */	lhz r7, 2(r31)
/* 8058C760  38 A0 00 01 */	li r5, 1
/* 8058C764  3C 83 FF FF */	addis r4, r3, 0xffff
/* 8058C768  38 60 00 01 */	li r3, 1
/* 8058C76C  38 04 2F D3 */	addi r0, r4, 0x2fd3
/* 8058C770  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058C774  7C C0 00 30 */	slw r0, r6, r0
/* 8058C778  7C E0 00 78 */	andc r0, r7, r0
/* 8058C77C  B0 1F 00 02 */	sth r0, 2(r31)
/* 8058C780  A0 9D 00 06 */	lhz r4, 6(r29)
/* 8058C784  88 DF 00 01 */	lbz r6, 1(r31)
/* 8058C788  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8058C78C  38 04 2F D3 */	addi r0, r4, 0x2fd3
/* 8058C790  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8058C794  7C A0 00 30 */	slw r0, r5, r0
/* 8058C798  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8058C79C  7C C0 00 78 */	andc r0, r6, r0
/* 8058C7A0  98 1F 00 01 */	stb r0, 1(r31)
/* 8058C7A4  48 00 00 08 */	b lbl_8058C7AC
lbl_8058C7A8:
/* 8058C7A8  38 60 00 00 */	li r3, 0
lbl_8058C7AC:
/* 8058C7AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C7B0  4B B0 E7 71 */	bl func_8009AF20
/* 8058C7B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C7B8  7C 08 03 A6 */	mtlr r0
/* 8058C7BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C7C0  4E 80 00 20 */	blr 
