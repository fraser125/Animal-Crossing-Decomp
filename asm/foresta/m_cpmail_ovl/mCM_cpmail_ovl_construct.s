lbl_805CD094:
/* 805CD094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CD098  7C 08 02 A6 */	mflr r0
/* 805CD09C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD0A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD0A4  4B AC DE 31 */	bl func_8009AED4
/* 805CD0A8  7C 7D 1B 78 */	mr r29, r3
/* 805CD0AC  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805CD0B0  80 1F 09 C0 */	lwz r0, 0x9c0(r31)
/* 805CD0B4  3B DF 05 1C */	addi r30, r31, 0x51c
/* 805CD0B8  28 00 00 00 */	cmplwi r0, 0
/* 805CD0BC  40 82 00 58 */	bne lbl_805CD114
/* 805CD0C0  3C 60 81 21 */	lis r3, cpmail_ovl_data@ha /* 0x81210350@ha */
/* 805CD0C4  38 80 0B C4 */	li r4, 0xbc4
/* 805CD0C8  38 63 03 50 */	addi r3, r3, cpmail_ovl_data@l /* 0x81210350@l */
/* 805CD0CC  38 A0 00 00 */	li r5, 0
/* 805CD0D0  4B DE D9 79 */	bl mem_clear
/* 805CD0D4  3C 80 81 21 */	lis r4, cpmail_ovl_data@ha /* 0x81210350@ha */
/* 805CD0D8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000BAC0@ha */
/* 805CD0DC  38 04 03 50 */	addi r0, r4, cpmail_ovl_data@l /* 0x81210350@l */
/* 805CD0E0  38 80 00 20 */	li r4, 0x20
/* 805CD0E4  90 1F 09 C0 */	stw r0, 0x9c0(r31)
/* 805CD0E8  38 63 BA C0 */	addi r3, r3, 0xBAC0 /* 0x0000BAC0@l */
/* 805CD0EC  4B DE F3 3D */	bl func_803BC428
/* 805CD0F0  3C A0 81 21 */	lis r5, cpmail_ovl_data@ha /* 0x81210350@ha */
/* 805CD0F4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000BAC0@ha */
/* 805CD0F8  38 C5 03 50 */	addi r6, r5, cpmail_ovl_data@l /* 0x81210350@l */
/* 805CD0FC  38 A0 00 00 */	li r5, 0
/* 805CD100  90 66 00 00 */	stw r3, 0(r6)
/* 805CD104  38 84 BA C0 */	addi r4, r4, 0xBAC0 /* 0x0000BAC0@l */
/* 805CD108  4B DE D9 41 */	bl mem_clear
/* 805CD10C  7F C3 F3 78 */	mr r3, r30
/* 805CD110  4B FF FD AD */	bl mCM_cpmail_draw_init
lbl_805CD114:
/* 805CD114  7F A3 EB 78 */	mr r3, r29
/* 805CD118  7F C4 F3 78 */	mr r4, r30
/* 805CD11C  4B FF FE 59 */	bl mCM_cpmail_ovl_init
/* 805CD120  7F A3 EB 78 */	mr r3, r29
/* 805CD124  4B FF FD B5 */	bl mCM_cpmail_ovl_set_proc
/* 805CD128  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD12C  4B AC DD F5 */	bl func_8009AF20
/* 805CD130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CD134  7C 08 03 A6 */	mtlr r0
/* 805CD138  38 21 00 20 */	addi r1, r1, 0x20
/* 805CD13C  4E 80 00 20 */	blr 
