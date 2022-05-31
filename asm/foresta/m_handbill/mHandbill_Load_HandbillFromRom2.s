lbl_803B27A8:
/* 803B27A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B27AC  7C 08 02 A6 */	mflr r0
/* 803B27B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B27B4  39 61 00 30 */	addi r11, r1, 0x30
/* 803B27B8  4B CE 87 0D */	bl func_8009AEC4
/* 803B27BC  7C 79 1B 78 */	mr r25, r3
/* 803B27C0  7C 9A 23 78 */	mr r26, r4
/* 803B27C4  7C BB 2B 78 */	mr r27, r5
/* 803B27C8  7C DC 33 78 */	mr r28, r6
/* 803B27CC  7C FD 3B 78 */	mr r29, r7
/* 803B27D0  7D 1E 43 78 */	mr r30, r8
/* 803B27D4  7D 3F 4B 78 */	mr r31, r9
/* 803B27D8  4B FF F1 5D */	bl mHandbill_load_init
/* 803B27DC  7F 23 CB 78 */	mr r3, r25
/* 803B27E0  7F 44 D3 78 */	mr r4, r26
/* 803B27E4  7F 65 DB 78 */	mr r5, r27
/* 803B27E8  7F E6 FB 78 */	mr r6, r31
/* 803B27EC  4B FF FB BD */	bl mHandbill_Load_SuperStringFromRom
/* 803B27F0  7F 83 E3 78 */	mr r3, r28
/* 803B27F4  7F A4 EB 78 */	mr r4, r29
/* 803B27F8  7F E5 FB 78 */	mr r5, r31
/* 803B27FC  4B FF FD 01 */	bl mHandbill_Load_PsStringFromRom
/* 803B2800  7F C3 F3 78 */	mr r3, r30
/* 803B2804  7F E4 FB 78 */	mr r4, r31
/* 803B2808  4B FF FE 15 */	bl mHandbill_Load_MailFromRom
/* 803B280C  39 61 00 30 */	addi r11, r1, 0x30
/* 803B2810  4B CE 87 01 */	bl func_8009AF10
/* 803B2814  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B2818  7C 08 03 A6 */	mtlr r0
/* 803B281C  38 21 00 30 */	addi r1, r1, 0x30
/* 803B2820  4E 80 00 20 */	blr 
