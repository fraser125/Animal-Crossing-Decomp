lbl_8049588C:
/* 8049588C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80495890  7C 08 02 A6 */	mflr r0
/* 80495894  90 01 00 24 */	stw r0, 0x24(r1)
/* 80495898  39 61 00 20 */	addi r11, r1, 0x20
/* 8049589C  4B C0 56 39 */	bl func_8009AED4
/* 804958A0  7C 7E 1B 78 */	mr r30, r3
/* 804958A4  3C 60 81 1D */	lis r3, show_mail@ha /* 0x811CECDC@ha */
/* 804958A8  80 9E 01 78 */	lwz r4, 0x178(r30)
/* 804958AC  38 63 EC DC */	addi r3, r3, show_mail@l /* 0x811CECDC@l */
/* 804958B0  83 FE 01 74 */	lwz r31, 0x174(r30)
/* 804958B4  80 84 00 00 */	lwz r4, 0(r4)
/* 804958B8  83 A4 01 7C */	lwz r29, 0x17c(r4)
/* 804958BC  4B F2 6E 45 */	bl mMl_clear_mail
/* 804958C0  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 804958C4  38 83 EC A4 */	addi r4, r3, l_normal_info@l /* 0x811CECA4@l */
/* 804958C8  80 A4 00 00 */	lwz r5, 0(r4)
/* 804958CC  28 05 00 00 */	cmplwi r5, 0
/* 804958D0  41 82 00 2C */	beq lbl_804958FC
/* 804958D4  3C 60 81 1D */	lis r3, show_mail@ha /* 0x811CECDC@ha */
/* 804958D8  80 84 00 04 */	lwz r4, 4(r4)
/* 804958DC  38 63 EC DC */	addi r3, r3, show_mail@l /* 0x811CECDC@l */
/* 804958E0  7F A6 EB 78 */	mr r6, r29
/* 804958E4  4B F3 73 D5 */	bl mNpc_AnimalMail2Mail
/* 804958E8  3C 60 81 1D */	lis r3, show_mail@ha /* 0x811CECDC@ha */
/* 804958EC  38 00 00 00 */	li r0, 0
/* 804958F0  38 63 EC DC */	addi r3, r3, show_mail@l /* 0x811CECDC@l */
/* 804958F4  98 03 00 30 */	stb r0, 0x30(r3)
/* 804958F8  48 00 00 3C */	b lbl_80495934
lbl_804958FC:
/* 804958FC  3C 60 81 1D */	lis r3, show_mail@ha /* 0x811CECDC@ha */
/* 80495900  80 84 00 04 */	lwz r4, 4(r4)
/* 80495904  38 63 EC DC */	addi r3, r3, show_mail@l /* 0x811CECDC@l */
/* 80495908  7F A6 EB 78 */	mr r6, r29
/* 8049590C  38 A0 00 00 */	li r5, 0
/* 80495910  4B F3 73 A9 */	bl mNpc_AnimalMail2Mail
/* 80495914  3C 60 81 1D */	lis r3, show_mail@ha /* 0x811CECDC@ha */
/* 80495918  38 00 00 00 */	li r0, 0
/* 8049591C  38 63 EC DC */	addi r3, r3, show_mail@l /* 0x811CECDC@l */
/* 80495920  38 80 00 08 */	li r4, 8
/* 80495924  98 03 00 30 */	stb r0, 0x30(r3)
/* 80495928  38 63 00 16 */	addi r3, r3, 0x16
/* 8049592C  38 A0 00 20 */	li r5, 0x20
/* 80495930  4B F2 51 19 */	bl mem_clear
lbl_80495934:
/* 80495934  3C 80 81 1D */	lis r4, show_mail@ha /* 0x811CECDC@ha */
/* 80495938  7F E3 FB 78 */	mr r3, r31
/* 8049593C  38 E4 EC DC */	addi r7, r4, show_mail@l /* 0x811CECDC@l */
/* 80495940  38 A0 00 01 */	li r5, 1
/* 80495944  38 80 00 0C */	li r4, 0xc
/* 80495948  38 C0 00 00 */	li r6, 0
/* 8049594C  4B F5 9D B9 */	bl mSM_open_submenu_new
/* 80495950  38 60 00 04 */	li r3, 4
/* 80495954  38 00 00 03 */	li r0, 3
/* 80495958  98 7E 01 85 */	stb r3, 0x185(r30)
/* 8049595C  98 1E 01 86 */	stb r0, 0x186(r30)
/* 80495960  4B F2 9D 49 */	bl func_803BF6A8
/* 80495964  4B F2 B3 DD */	bl mMsg_Set_LockContinue
/* 80495968  39 61 00 20 */	addi r11, r1, 0x20
/* 8049596C  4B C0 55 B5 */	bl func_8009AF20
/* 80495970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495974  7C 08 03 A6 */	mtlr r0
/* 80495978  38 21 00 20 */	addi r1, r1, 0x20
/* 8049597C  4E 80 00 20 */	blr 
