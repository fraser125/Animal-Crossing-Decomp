lbl_804894A4:
/* 804894A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804894A8  7C 08 02 A6 */	mflr r0
/* 804894AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804894B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804894B4  4B C1 1A 1D */	bl func_8009AED0
/* 804894B8  2C 05 00 00 */	cmpwi r5, 0
/* 804894BC  7C DC 33 78 */	mr r28, r6
/* 804894C0  40 82 00 0C */	bne lbl_804894CC
/* 804894C4  4B FF F7 C1 */	bl aQMgr_get_hello_msg_how_do_you_do
/* 804894C8  48 00 00 AC */	b lbl_80489574
lbl_804894CC:
/* 804894CC  4B F4 8A 35 */	bl mNpc_GetNpcLooks
/* 804894D0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804894D4  7C 7F 1B 78 */	mr r31, r3
/* 804894D8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804894DC  3B A0 00 00 */	li r29, 0
/* 804894E0  3F C3 00 02 */	addis r30, r3, 2
/* 804894E4  38 80 00 00 */	li r4, 0
/* 804894E8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 804894EC  4B F5 72 3D */	bl mPr_GetPossessionItemIdx
/* 804894F0  2C 03 FF FF */	cmpwi r3, -1
/* 804894F4  41 82 00 18 */	beq lbl_8048950C
/* 804894F8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 804894FC  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 80489500  28 00 0B B8 */	cmplwi r0, 0xbb8
/* 80489504  41 80 00 08 */	blt lbl_8048950C
/* 80489508  63 BD 00 01 */	ori r29, r29, 1
lbl_8048950C:
/* 8048950C  7F 83 E3 78 */	mr r3, r28
/* 80489510  4B FF F8 B1 */	bl aQMgr_check_possession_item
/* 80489514  2C 03 00 01 */	cmpwi r3, 1
/* 80489518  40 82 00 08 */	bne lbl_80489520
/* 8048951C  63 BD 00 02 */	ori r29, r29, 2
lbl_80489520:
/* 80489520  2C 1D 00 03 */	cmpwi r29, 3
/* 80489524  40 82 00 3C */	bne lbl_80489560
/* 80489528  4B BD 37 CD */	bl fqrand
/* 8048952C  3C 80 80 64 */	lis r4, data_80644BB4@ha /* 0x80644BB4@ha */
/* 80489530  3C 60 80 69 */	lis r3, hello_msg@ha /* 0x8068AF14@ha */
/* 80489534  C0 04 4B B4 */	lfs f0, data_80644BB4@l(r4)  /* 0x80644BB4@l */
/* 80489538  57 E0 10 3A */	slwi r0, r31, 2
/* 8048953C  38 63 AF 14 */	addi r3, r3, hello_msg@l /* 0x8068AF14@l */
/* 80489540  EC 00 00 72 */	fmuls f0, f0, f1
/* 80489544  7C 03 00 2E */	lwzx r0, r3, r0
/* 80489548  FC 00 00 1E */	fctiwz f0, f0
/* 8048954C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80489550  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80489554  7C 60 1A 14 */	add r3, r0, r3
/* 80489558  38 63 00 01 */	addi r3, r3, 1
/* 8048955C  48 00 00 18 */	b lbl_80489574
lbl_80489560:
/* 80489560  3C 60 80 69 */	lis r3, hello_msg@ha /* 0x8068AF14@ha */
/* 80489564  57 E0 10 3A */	slwi r0, r31, 2
/* 80489568  38 63 AF 14 */	addi r3, r3, hello_msg@l /* 0x8068AF14@l */
/* 8048956C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80489570  7C 7D 02 14 */	add r3, r29, r0
lbl_80489574:
/* 80489574  39 61 00 20 */	addi r11, r1, 0x20
/* 80489578  4B C1 19 A5 */	bl func_8009AF1C
/* 8048957C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80489580  7C 08 03 A6 */	mtlr r0
/* 80489584  38 21 00 20 */	addi r1, r1, 0x20
/* 80489588  4E 80 00 20 */	blr 
