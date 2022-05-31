lbl_803B1324:
/* 803B1324  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803B1328  7C 08 02 A6 */	mflr r0
/* 803B132C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B1330  39 61 00 60 */	addi r11, r1, 0x60
/* 803B1334  4B CE 9B 05 */	bl func_8009AE38
/* 803B1338  39 61 00 40 */	addi r11, r1, 0x40
/* 803B133C  4B CE 9B 75 */	bl func_8009AEB0
/* 803B1340  54 9C 06 3E */	clrlwi r28, r4, 0x18
/* 803B1344  FF E0 08 90 */	fmr f31, f1
/* 803B1348  FF 80 10 90 */	fmr f28, f2
/* 803B134C  2C 1C 00 05 */	cmpwi r28, 5
/* 803B1350  FF A0 18 90 */	fmr f29, f3
/* 803B1354  7C 7A 1B 78 */	mr r26, r3
/* 803B1358  FF C0 20 90 */	fmr f30, f4
/* 803B135C  7C B4 2B 78 */	mr r20, r5
/* 803B1360  7C D5 33 78 */	mr r21, r6
/* 803B1364  7C F6 3B 78 */	mr r22, r7
/* 803B1368  7D 17 43 78 */	mr r23, r8
/* 803B136C  7D 38 4B 78 */	mr r24, r9
/* 803B1370  7D 5B 53 78 */	mr r27, r10
/* 803B1374  40 80 01 3C */	bge lbl_803B14B0
/* 803B1378  7F 83 E3 78 */	mr r3, r28
/* 803B137C  4B FF FF 19 */	bl func_803B1294
/* 803B1380  7C 7E 1B 78 */	mr r30, r3
/* 803B1384  7F 83 E3 78 */	mr r3, r28
/* 803B1388  4B FF FF 3D */	bl mFont_Get_MarkTex_sizeW
/* 803B138C  7C 60 1B 78 */	mr r0, r3
/* 803B1390  7F 83 E3 78 */	mr r3, r28
/* 803B1394  7C 1D 03 78 */	mr r29, r0
/* 803B1398  4B FF FF 5D */	bl mFont_Get_MarkTex_sizeH
/* 803B139C  83 3A 00 00 */	lwz r25, 0(r26)
/* 803B13A0  28 1E 00 00 */	cmplwi r30, 0
/* 803B13A4  7C 7C 1B 78 */	mr r28, r3
/* 803B13A8  80 99 02 D4 */	lwz r4, 0x2d4(r25)
/* 803B13AC  3B E4 FF B8 */	addi r31, r4, -72
/* 803B13B0  93 F9 02 D4 */	stw r31, 0x2d4(r25)
/* 803B13B4  41 82 00 FC */	beq lbl_803B14B0
/* 803B13B8  2C 1D 00 00 */	cmpwi r29, 0
/* 803B13BC  41 82 00 F4 */	beq lbl_803B14B0
/* 803B13C0  2C 1C 00 00 */	cmpwi r28, 0
/* 803B13C4  41 82 00 EC */	beq lbl_803B14B0
/* 803B13C8  28 1F 00 00 */	cmplwi r31, 0
/* 803B13CC  41 82 00 E4 */	beq lbl_803B14B0
/* 803B13D0  7F 23 CB 78 */	mr r3, r25
/* 803B13D4  7F 64 DB 78 */	mr r4, r27
/* 803B13D8  4B FF E4 95 */	bl mFont_SetMode
/* 803B13DC  7F 23 CB 78 */	mr r3, r25
/* 803B13E0  7E 84 A3 78 */	mr r4, r20
/* 803B13E4  7E A5 AB 78 */	mr r5, r21
/* 803B13E8  7E C6 B3 78 */	mr r6, r22
/* 803B13EC  7E E7 BB 78 */	mr r7, r23
/* 803B13F0  7F 68 DB 78 */	mr r8, r27
/* 803B13F4  4B FF E5 45 */	bl mFont_SetPrimColor
/* 803B13F8  7F 23 CB 78 */	mr r3, r25
/* 803B13FC  7F 04 C3 78 */	mr r4, r24
/* 803B1400  7F 65 DB 78 */	mr r5, r27
/* 803B1404  4B FF E6 51 */	bl mFont_SetCombineMode
/* 803B1408  2C 1B 00 01 */	cmpwi r27, 1
/* 803B140C  40 82 00 20 */	bne lbl_803B142C
/* 803B1410  80 99 02 F0 */	lwz r4, 0x2f0(r25)
/* 803B1414  3C 00 DE 00 */	lis r0, 0xde00
/* 803B1418  38 64 00 08 */	addi r3, r4, 8
/* 803B141C  90 79 02 F0 */	stw r3, 0x2f0(r25)
/* 803B1420  90 04 00 00 */	stw r0, 0(r4)
/* 803B1424  93 E4 00 04 */	stw r31, 4(r4)
/* 803B1428  48 00 00 1C */	b lbl_803B1444
lbl_803B142C:
/* 803B142C  80 99 02 D0 */	lwz r4, 0x2d0(r25)
/* 803B1430  3C 00 DE 00 */	lis r0, 0xde00
/* 803B1434  38 64 00 08 */	addi r3, r4, 8
/* 803B1438  90 79 02 D0 */	stw r3, 0x2d0(r25)
/* 803B143C  90 04 00 00 */	stw r0, 0(r4)
/* 803B1440  93 E4 00 04 */	stw r31, 4(r4)
lbl_803B1444:
/* 803B1444  38 7C 00 03 */	addi r3, r28, 3
/* 803B1448  38 1D FF FF */	addi r0, r29, -1
/* 803B144C  7C 63 16 70 */	srawi r3, r3, 2
/* 803B1450  3C C0 D2 F0 */	lis r6, 0xd2f0
/* 803B1454  7C 63 01 94 */	addze r3, r3
/* 803B1458  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 803B145C  38 63 FF FF */	addi r3, r3, -1
/* 803B1460  3C E0 DF 00 */	lis r7, 0xdf00
/* 803B1464  54 63 53 AA */	rlwinm r3, r3, 0xa, 0xe, 0x15
/* 803B1468  FC 20 F8 90 */	fmr f1, f31
/* 803B146C  64 63 FD 84 */	oris r3, r3, 0xfd84
/* 803B1470  FC 40 E0 90 */	fmr f2, f28
/* 803B1474  7C 60 03 78 */	or r0, r3, r0
/* 803B1478  FC 60 E8 90 */	fmr f3, f29
/* 803B147C  90 1F 00 00 */	stw r0, 0(r31)
/* 803B1480  FC 80 F0 90 */	fmr f4, f30
/* 803B1484  38 00 00 00 */	li r0, 0
/* 803B1488  93 DF 00 04 */	stw r30, 4(r31)
/* 803B148C  7F 43 D3 78 */	mr r3, r26
/* 803B1490  7F A4 EB 78 */	mr r4, r29
/* 803B1494  7F 85 E3 78 */	mr r5, r28
/* 803B1498  90 DF 00 08 */	stw r6, 8(r31)
/* 803B149C  7F 66 DB 78 */	mr r6, r27
/* 803B14A0  90 FF 00 10 */	stw r7, 0x10(r31)
/* 803B14A4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803B14A8  4B FF E6 CD */	bl mFont_SetVertexRectangle
/* 803B14AC  FF E0 08 90 */	fmr f31, f1
lbl_803B14B0:
/* 803B14B0  FC 20 F8 90 */	fmr f1, f31
/* 803B14B4  39 61 00 60 */	addi r11, r1, 0x60
/* 803B14B8  4B CE 99 CD */	bl func_8009AE84
/* 803B14BC  39 61 00 40 */	addi r11, r1, 0x40
/* 803B14C0  4B CE 9A 3D */	bl func_8009AEFC
/* 803B14C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803B14C8  7C 08 03 A6 */	mtlr r0
/* 803B14CC  38 21 00 60 */	addi r1, r1, 0x60
/* 803B14D0  4E 80 00 20 */	blr 
