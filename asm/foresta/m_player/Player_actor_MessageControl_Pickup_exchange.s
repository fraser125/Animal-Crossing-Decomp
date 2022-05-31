lbl_804EED1C:
/* 804EED1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EED20  7C 08 02 A6 */	mflr r0
/* 804EED24  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EED28  39 61 00 20 */	addi r11, r1, 0x20
/* 804EED2C  4B BA C1 A9 */	bl func_8009AED4
/* 804EED30  7C 7D 1B 78 */	mr r29, r3
/* 804EED34  7C 9E 23 78 */	mr r30, r4
/* 804EED38  3B FD 0D 28 */	addi r31, r29, 0xd28
/* 804EED3C  80 03 0D 28 */	lwz r0, 0xd28(r3)
/* 804EED40  2C 00 00 02 */	cmpwi r0, 2
/* 804EED44  41 82 00 A4 */	beq lbl_804EEDE8
/* 804EED48  40 80 00 14 */	bge lbl_804EED5C
/* 804EED4C  2C 00 00 00 */	cmpwi r0, 0
/* 804EED50  41 82 00 18 */	beq lbl_804EED68
/* 804EED54  40 80 00 50 */	bge lbl_804EEDA4
/* 804EED58  48 00 00 E8 */	b lbl_804EEE40
lbl_804EED5C:
/* 804EED5C  2C 00 00 04 */	cmpwi r0, 4
/* 804EED60  40 80 00 E0 */	bge lbl_804EEE40
/* 804EED64  48 00 00 BC */	b lbl_804EEE20
lbl_804EED68:
/* 804EED68  7F A4 EB 78 */	mr r4, r29
/* 804EED6C  38 60 00 09 */	li r3, 9
/* 804EED70  4B EA B4 F5 */	bl mDemo_Check
/* 804EED74  2C 03 00 00 */	cmpwi r3, 0
/* 804EED78  40 82 00 1C */	bne lbl_804EED94
/* 804EED7C  3C 60 80 4F */	lis r3, Player_actor_Pickup_exchange_demo_ct@ha /* 0x804EECAC@ha */
/* 804EED80  7F A4 EB 78 */	mr r4, r29
/* 804EED84  38 A3 EC AC */	addi r5, r3, Player_actor_Pickup_exchange_demo_ct@l /* 0x804EECAC@l */
/* 804EED88  38 60 00 09 */	li r3, 9
/* 804EED8C  4B EA B3 D1 */	bl mDemo_Request
/* 804EED90  48 00 00 0C */	b lbl_804EED9C
lbl_804EED94:
/* 804EED94  38 00 00 01 */	li r0, 1
/* 804EED98  90 1F 00 00 */	stw r0, 0(r31)
lbl_804EED9C:
/* 804EED9C  38 60 FF FF */	li r3, -1
/* 804EEDA0  48 00 00 A4 */	b lbl_804EEE44
lbl_804EEDA4:
/* 804EEDA4  4B E9 47 9D */	bl func_80383540
/* 804EEDA8  4B E9 4D C5 */	bl mChoice_Get_ChoseNum
/* 804EEDAC  2C 03 00 00 */	cmpwi r3, 0
/* 804EEDB0  40 82 00 18 */	bne lbl_804EEDC8
/* 804EEDB4  38 60 00 02 */	li r3, 2
/* 804EEDB8  38 00 00 01 */	li r0, 1
/* 804EEDBC  90 7F 00 00 */	stw r3, 0(r31)
/* 804EEDC0  90 1D 0D 2C */	stw r0, 0xd2c(r29)
/* 804EEDC4  48 00 00 1C */	b lbl_804EEDE0
lbl_804EEDC8:
/* 804EEDC8  2C 03 00 01 */	cmpwi r3, 1
/* 804EEDCC  40 82 00 14 */	bne lbl_804EEDE0
/* 804EEDD0  38 60 00 03 */	li r3, 3
/* 804EEDD4  38 00 00 00 */	li r0, 0
/* 804EEDD8  90 7F 00 00 */	stw r3, 0(r31)
/* 804EEDDC  90 1D 0D 2C */	stw r0, 0xd2c(r29)
lbl_804EEDE0:
/* 804EEDE0  38 60 FF FF */	li r3, -1
/* 804EEDE4  48 00 00 60 */	b lbl_804EEE44
lbl_804EEDE8:
/* 804EEDE8  7F A4 EB 78 */	mr r4, r29
/* 804EEDEC  38 60 00 09 */	li r3, 9
/* 804EEDF0  4B EA B4 75 */	bl mDemo_Check
/* 804EEDF4  2C 03 00 00 */	cmpwi r3, 0
/* 804EEDF8  40 82 00 20 */	bne lbl_804EEE18
/* 804EEDFC  A0 DD 0D 24 */	lhz r6, 0xd24(r29)
/* 804EEE00  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 804EEE04  A9 1D 00 DE */	lha r8, 0xde(r29)
/* 804EEE08  38 80 00 01 */	li r4, 1
/* 804EEE0C  38 A0 00 0D */	li r5, 0xd
/* 804EEE10  38 E0 00 00 */	li r7, 0
/* 804EEE14  4B F0 09 15 */	bl mSM_open_submenu_new2
lbl_804EEE18:
/* 804EEE18  38 60 FF FF */	li r3, -1
/* 804EEE1C  48 00 00 28 */	b lbl_804EEE44
lbl_804EEE20:
/* 804EEE20  7F A4 EB 78 */	mr r4, r29
/* 804EEE24  38 60 00 09 */	li r3, 9
/* 804EEE28  4B EA B4 3D */	bl mDemo_Check
/* 804EEE2C  2C 03 00 00 */	cmpwi r3, 0
/* 804EEE30  38 60 FF FF */	li r3, -1
/* 804EEE34  40 82 00 10 */	bne lbl_804EEE44
/* 804EEE38  38 60 00 07 */	li r3, 7
/* 804EEE3C  48 00 00 08 */	b lbl_804EEE44
lbl_804EEE40:
/* 804EEE40  38 60 FF FF */	li r3, -1
lbl_804EEE44:
/* 804EEE44  39 61 00 20 */	addi r11, r1, 0x20
/* 804EEE48  4B BA C0 D9 */	bl func_8009AF20
/* 804EEE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EEE50  7C 08 03 A6 */	mtlr r0
/* 804EEE54  38 21 00 20 */	addi r1, r1, 0x20
/* 804EEE58  4E 80 00 20 */	blr 
