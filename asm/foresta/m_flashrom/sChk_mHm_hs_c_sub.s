lbl_803AD2F4:
/* 803AD2F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD2F8  7C 08 02 A6 */	mflr r0
/* 803AD2FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD300  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD304  4B CE DB C9 */	bl func_8009AECC
/* 803AD308  7C 7B 1B 78 */	mr r27, r3
/* 803AD30C  7C 9C 23 78 */	mr r28, r4
/* 803AD310  38 7B 00 1C */	addi r3, r27, 0x1c
/* 803AD314  4B FF FA A5 */	bl sChk_lbRTC_ymd_c_sub
/* 803AD318  7C 7D 1B 78 */	mr r29, r3
/* 803AD31C  38 7B 00 26 */	addi r3, r27, 0x26
/* 803AD320  38 9C 00 01 */	addi r4, r28, 1
/* 803AD324  4B FF FD FD */	bl sChk_mHm_rmsz_c_sub
/* 803AD328  7F BD 1B 78 */	or r29, r29, r3
/* 803AD32C  88 7B 00 2C */	lbz r3, 0x2c(r27)
/* 803AD330  4B FF FF 59 */	bl sChk_outlook_pal_sub
/* 803AD334  7F BD 1B 78 */	or r29, r29, r3
/* 803AD338  88 7B 00 2D */	lbz r3, 0x2d(r27)
/* 803AD33C  4B FF FF 4D */	bl sChk_outlook_pal_sub
/* 803AD340  7F BD 1B 78 */	or r29, r29, r3
/* 803AD344  88 7B 00 2E */	lbz r3, 0x2e(r27)
/* 803AD348  4B FF FF 41 */	bl sChk_outlook_pal_sub
/* 803AD34C  7F BD 1B 78 */	or r29, r29, r3
/* 803AD350  3B C0 00 00 */	li r30, 0
/* 803AD354  3B E0 00 00 */	li r31, 0
lbl_803AD358:
/* 803AD358  38 7F 1A 30 */	addi r3, r31, 0x1a30
/* 803AD35C  38 9C 00 01 */	addi r4, r28, 1
/* 803AD360  7C 7B 1A 14 */	add r3, r27, r3
/* 803AD364  4B FF FD 5D */	bl sChk_Mail_c_sub
/* 803AD368  3B DE 00 01 */	addi r30, r30, 1
/* 803AD36C  7F BD 1B 78 */	or r29, r29, r3
/* 803AD370  2C 1E 00 0A */	cmpwi r30, 0xa
/* 803AD374  3B FF 01 2A */	addi r31, r31, 0x12a
/* 803AD378  41 80 FF E0 */	blt lbl_803AD358
/* 803AD37C  38 7B 25 D4 */	addi r3, r27, 0x25d4
/* 803AD380  38 9C 00 01 */	addi r4, r28, 1
/* 803AD384  4B FF FE A1 */	bl sChk_Haniwa_c_sub
/* 803AD388  7F BD 1B 78 */	or r29, r29, r3
/* 803AD38C  38 7B 26 78 */	addi r3, r27, 0x2678
/* 803AD390  38 9C 00 01 */	addi r4, r28, 1
/* 803AD394  4B FF FF 41 */	bl sChk_mHm_goki_c_sub
/* 803AD398  7F BD 1B 78 */	or r29, r29, r3
/* 803AD39C  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD3A0  7F A3 EB 78 */	mr r3, r29
/* 803AD3A4  4B CE DB 75 */	bl func_8009AF18
/* 803AD3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD3AC  7C 08 03 A6 */	mtlr r0
/* 803AD3B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD3B4  4E 80 00 20 */	blr 
