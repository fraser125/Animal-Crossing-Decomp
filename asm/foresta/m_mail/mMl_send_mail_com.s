lbl_803BCF54:
/* 803BCF54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803BCF58  7C 08 02 A6 */	mflr r0
/* 803BCF5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803BCF60  39 61 00 40 */	addi r11, r1, 0x40
/* 803BCF64  4B CD DF 59 */	bl func_8009AEBC
/* 803BCF68  7D 5E 53 78 */	mr r30, r10
/* 803BCF6C  3D 40 81 17 */	lis r10, l_ml_mail@ha /* 0x81169E60@ha */
/* 803BCF70  7C B9 2B 78 */	mr r25, r5
/* 803BCF74  7C DA 33 78 */	mr r26, r6
/* 803BCF78  7C FB 3B 78 */	mr r27, r7
/* 803BCF7C  7D 1C 43 78 */	mr r28, r8
/* 803BCF80  7D 3D 4B 78 */	mr r29, r9
/* 803BCF84  38 AA 9E 60 */	addi r5, r10, l_ml_mail@l /* 0x81169E60@l */
/* 803BCF88  93 C1 00 08 */	stw r30, 8(r1)
/* 803BCF8C  7C 77 1B 78 */	mr r23, r3
/* 803BCF90  7C 98 23 78 */	mr r24, r4
/* 803BCF94  7C BF 2B 78 */	mr r31, r5
/* 803BCF98  7F 26 CB 78 */	mr r6, r25
/* 803BCF9C  7F 47 D3 78 */	mr r7, r26
/* 803BCFA0  7F 68 DB 78 */	mr r8, r27
/* 803BCFA4  7F 89 E3 78 */	mr r9, r28
/* 803BCFA8  7F AA EB 78 */	mr r10, r29
/* 803BCFAC  4B FF FD 9D */	bl mMl_send_mail_box_com
/* 803BCFB0  2C 03 00 01 */	cmpwi r3, 1
/* 803BCFB4  41 82 00 2C */	beq lbl_803BCFE0
/* 803BCFB8  93 C1 00 08 */	stw r30, 8(r1)
/* 803BCFBC  7F E3 FB 78 */	mr r3, r31
/* 803BCFC0  7E E4 BB 78 */	mr r4, r23
/* 803BCFC4  7F 05 C3 78 */	mr r5, r24
/* 803BCFC8  7F 26 CB 78 */	mr r6, r25
/* 803BCFCC  7F 47 D3 78 */	mr r7, r26
/* 803BCFD0  7F 68 DB 78 */	mr r8, r27
/* 803BCFD4  7F 89 E3 78 */	mr r9, r28
/* 803BCFD8  7F AA EB 78 */	mr r10, r29
/* 803BCFDC  4B FF FE 71 */	bl mMl_send_mail_postoffice_com
lbl_803BCFE0:
/* 803BCFE0  39 61 00 40 */	addi r11, r1, 0x40
/* 803BCFE4  4B CD DF 25 */	bl func_8009AF08
/* 803BCFE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BCFEC  7C 08 03 A6 */	mtlr r0
/* 803BCFF0  38 21 00 40 */	addi r1, r1, 0x40
/* 803BCFF4  4E 80 00 20 */	blr 
