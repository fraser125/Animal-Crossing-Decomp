lbl_804195D0:
/* 804195D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804195D4  7C 08 02 A6 */	mflr r0
/* 804195D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804195DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804195E0  4B C8 18 F1 */	bl func_8009AED0
/* 804195E4  3C C0 81 1D */	lis r6, data_811CB830@ha /* 0x811CB830@ha */
/* 804195E8  7C 7C 1B 78 */	mr r28, r3
/* 804195EC  3B E6 B8 30 */	addi r31, r6, data_811CB830@l /* 0x811CB830@l */
/* 804195F0  7C 9D 23 78 */	mr r29, r4
/* 804195F4  7C BE 2B 78 */	mr r30, r5
/* 804195F8  7F E3 FB 78 */	mr r3, r31
/* 804195FC  4B FA 31 05 */	bl mMl_clear_mail
/* 80419600  7F 87 E3 78 */	mr r7, r28
/* 80419604  38 7F 00 32 */	addi r3, r31, 0x32
/* 80419608  38 81 00 08 */	addi r4, r1, 8
/* 8041960C  38 BF 01 0A */	addi r5, r31, 0x10a
/* 80419610  38 DF 00 4A */	addi r6, r31, 0x4a
/* 80419614  4B F9 91 21 */	bl mHandbill_Load_HandbillFromRom
/* 80419618  3C 60 81 1D */	lis r3, data_811CB830@ha /* 0x811CB830@ha */
/* 8041961C  80 01 00 08 */	lwz r0, 8(r1)
/* 80419620  38 63 B8 30 */	addi r3, r3, data_811CB830@l /* 0x811CB830@l */
/* 80419624  38 80 00 00 */	li r4, 0
/* 80419628  98 9F 00 2E */	stb r4, 0x2e(r31)
/* 8041962C  38 80 00 02 */	li r4, 2
/* 80419630  9B A3 00 31 */	stb r29, 0x31(r3)
/* 80419634  98 03 00 2F */	stb r0, 0x2f(r3)
/* 80419638  9B C3 00 30 */	stb r30, 0x30(r3)
/* 8041963C  4B FC 5A 25 */	bl mPO_receipt_proc
/* 80419640  39 61 00 20 */	addi r11, r1, 0x20
/* 80419644  4B C8 18 D9 */	bl func_8009AF1C
/* 80419648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041964C  7C 08 03 A6 */	mtlr r0
/* 80419650  38 21 00 20 */	addi r1, r1, 0x20
/* 80419654  4E 80 00 20 */	blr 
