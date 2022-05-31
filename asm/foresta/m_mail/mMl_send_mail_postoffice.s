lbl_803BCEE0:
/* 803BCEE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BCEE4  7C 08 02 A6 */	mflr r0
/* 803BCEE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BCEEC  39 61 00 30 */	addi r11, r1, 0x30
/* 803BCEF0  4B CD DF DD */	bl func_8009AECC
/* 803BCEF4  3D 60 81 17 */	lis r11, l_ml_mail@ha /* 0x81169E60@ha */
/* 803BCEF8  7C 7B 1B 78 */	mr r27, r3
/* 803BCEFC  7C 9C 23 78 */	mr r28, r4
/* 803BCF00  7C BD 2B 78 */	mr r29, r5
/* 803BCF04  7C DE 33 78 */	mr r30, r6
/* 803BCF08  7C FF 3B 78 */	mr r31, r7
/* 803BCF0C  7D 0C 43 78 */	mr r12, r8
/* 803BCF10  7D 20 4B 78 */	mr r0, r9
/* 803BCF14  91 41 00 08 */	stw r10, 8(r1)
/* 803BCF18  38 6B 9E 60 */	addi r3, r11, l_ml_mail@l /* 0x81169E60@l */
/* 803BCF1C  7F 64 DB 78 */	mr r4, r27
/* 803BCF20  7F 85 E3 78 */	mr r5, r28
/* 803BCF24  7F A6 EB 78 */	mr r6, r29
/* 803BCF28  7F C7 F3 78 */	mr r7, r30
/* 803BCF2C  7F E8 FB 78 */	mr r8, r31
/* 803BCF30  7D 89 63 78 */	mr r9, r12
/* 803BCF34  7C 0A 03 78 */	mr r10, r0
/* 803BCF38  4B FF FF 15 */	bl mMl_send_mail_postoffice_com
/* 803BCF3C  39 61 00 30 */	addi r11, r1, 0x30
/* 803BCF40  4B CD DF D9 */	bl func_8009AF18
/* 803BCF44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BCF48  7C 08 03 A6 */	mtlr r0
/* 803BCF4C  38 21 00 30 */	addi r1, r1, 0x30
/* 803BCF50  4E 80 00 20 */	blr 
