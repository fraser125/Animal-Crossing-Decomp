lbl_803B2734:
/* 803B2734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B2738  7C 08 02 A6 */	mflr r0
/* 803B273C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B2740  39 61 00 20 */	addi r11, r1, 0x20
/* 803B2744  4B CE 87 89 */	bl func_8009AECC
/* 803B2748  7C 7B 1B 78 */	mr r27, r3
/* 803B274C  7C 9C 23 78 */	mr r28, r4
/* 803B2750  7C BD 2B 78 */	mr r29, r5
/* 803B2754  7C DE 33 78 */	mr r30, r6
/* 803B2758  7C FF 3B 78 */	mr r31, r7
/* 803B275C  4B FF F1 D9 */	bl mHandbill_load_init
/* 803B2760  7F 63 DB 78 */	mr r3, r27
/* 803B2764  7F 85 E3 78 */	mr r5, r28
/* 803B2768  7F E6 FB 78 */	mr r6, r31
/* 803B276C  38 80 00 18 */	li r4, 0x18
/* 803B2770  4B FF FC 39 */	bl mHandbill_Load_SuperStringFromRom
/* 803B2774  7F A3 EB 78 */	mr r3, r29
/* 803B2778  7F E5 FB 78 */	mr r5, r31
/* 803B277C  38 80 00 20 */	li r4, 0x20
/* 803B2780  4B FF FD 7D */	bl mHandbill_Load_PsStringFromRom
/* 803B2784  7F C3 F3 78 */	mr r3, r30
/* 803B2788  7F E4 FB 78 */	mr r4, r31
/* 803B278C  4B FF FE 91 */	bl mHandbill_Load_MailFromRom
/* 803B2790  39 61 00 20 */	addi r11, r1, 0x20
/* 803B2794  4B CE 87 85 */	bl func_8009AF18
/* 803B2798  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B279C  7C 08 03 A6 */	mtlr r0
/* 803B27A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803B27A4  4E 80 00 20 */	blr 
