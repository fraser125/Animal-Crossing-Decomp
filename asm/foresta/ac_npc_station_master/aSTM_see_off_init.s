lbl_805802E8:
/* 805802E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805802EC  7C 08 02 A6 */	mflr r0
/* 805802F0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805802F4  38 E0 00 01 */	li r7, 1
/* 805802F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805802FC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80580300  38 00 00 00 */	li r0, 0
/* 80580304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80580308  3C A5 00 03 */	addis r5, r5, 3
/* 8058030C  7C 7F 1B 78 */	mr r31, r3
/* 80580310  80 C3 09 98 */	lwz r6, 0x998(r3)
/* 80580314  90 E6 02 BC */	stw r7, 0x2bc(r6)
/* 80580318  98 05 88 40 */	stb r0, -0x77c0(r5)
/* 8058031C  4B FF FD 09 */	bl aSTM_get_off_wait_init
/* 80580320  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80580324  60 00 00 10 */	ori r0, r0, 0x10
/* 80580328  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8058032C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580334  7C 08 03 A6 */	mtlr r0
/* 80580338  38 21 00 10 */	addi r1, r1, 0x10
/* 8058033C  4E 80 00 20 */	blr 
