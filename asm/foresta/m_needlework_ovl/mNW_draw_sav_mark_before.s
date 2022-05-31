lbl_805EA244:
/* 805EA244  80 E3 00 00 */	lwz r7, 0(r3)
/* 805EA248  3C A0 80 B1 */	lis r5, sav_mark_winT_before_model@ha /* 0x80B10DC0@ha */
/* 805EA24C  3C C0 DE 00 */	lis r6, 0xde00
/* 805EA250  38 80 00 28 */	li r4, 0x28
/* 805EA254  81 07 02 D0 */	lwz r8, 0x2d0(r7)
/* 805EA258  38 05 0D C0 */	addi r0, r5, sav_mark_winT_before_model@l /* 0x80B10DC0@l */
/* 805EA25C  90 C8 00 00 */	stw r6, 0(r8)
/* 805EA260  90 08 00 04 */	stw r0, 4(r8)
/* 805EA264  80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 805EA268  7C 03 23 96 */	divwu r0, r3, r4
/* 805EA26C  7C 00 21 D6 */	mullw r0, r0, r4
/* 805EA270  7C C0 18 50 */	subf r6, r0, r3
/* 805EA274  2C 06 00 14 */	cmpwi r6, 0x14
/* 805EA278  40 81 00 08 */	ble lbl_805EA280
/* 805EA27C  20 C6 00 28 */	subfic r6, r6, 0x28
lbl_805EA280:
/* 805EA280  1C 06 00 09 */	mulli r0, r6, 9
/* 805EA284  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805EA288  54 C3 08 3C */	slwi r3, r6, 1
/* 805EA28C  38 A4 00 FF */	addi r5, r4, 0x00FF /* 0xFA0000FF@l */
/* 805EA290  7C 04 0E 70 */	srawi r4, r0, 1
/* 805EA294  90 A8 00 08 */	stw r5, 8(r8)
/* 805EA298  38 03 00 D2 */	addi r0, r3, 0xd2
/* 805EA29C  7C 64 01 94 */	addze r3, r4
/* 805EA2A0  3C 80 FB 00 */	lis r4, 0xfb00
/* 805EA2A4  38 A3 00 5F */	addi r5, r3, 0x5f
/* 805EA2A8  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805EA2AC  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 805EA2B0  1C 66 00 03 */	mulli r3, r6, 3
/* 805EA2B4  60 A5 00 FF */	ori r5, r5, 0xff
/* 805EA2B8  90 A8 00 0C */	stw r5, 0xc(r8)
/* 805EA2BC  39 08 00 10 */	addi r8, r8, 0x10
/* 805EA2C0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805EA2C4  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 805EA2C8  90 88 00 00 */	stw r4, 0(r8)
/* 805EA2CC  7D 05 43 78 */	mr r5, r8
/* 805EA2D0  39 08 00 08 */	addi r8, r8, 8
/* 805EA2D4  60 00 00 FF */	ori r0, r0, 0xff
/* 805EA2D8  90 05 00 04 */	stw r0, 4(r5)
/* 805EA2DC  91 07 02 D0 */	stw r8, 0x2d0(r7)
/* 805EA2E0  4E 80 00 20 */	blr 
