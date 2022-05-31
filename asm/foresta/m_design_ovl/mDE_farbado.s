lbl_805D1FC0:
/* 805D1FC0  94 21 EF B0 */	stwu r1, -0x1050(r1)
/* 805D1FC4  7C 08 02 A6 */	mflr r0
/* 805D1FC8  90 01 10 54 */	stw r0, 0x1054(r1)
/* 805D1FCC  39 61 10 50 */	addi r11, r1, 0x1050
/* 805D1FD0  4B AC 8E D5 */	bl func_8009AEA4
/* 805D1FD4  90 81 00 08 */	stw r4, 8(r1)
/* 805D1FD8  7C 74 1B 78 */	mr r20, r3
/* 805D1FDC  7C D5 33 78 */	mr r21, r6
/* 805D1FE0  3B A0 00 00 */	li r29, 0
/* 805D1FE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D1FE8  3B 80 00 01 */	li r28, 1
/* 805D1FEC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805D1FF0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805D1FF4  4B FF FE AD */	bl mDE_get_pal_on_cursor
/* 805D1FF8  7C 7F 1B 78 */	mr r31, r3
lbl_805D1FFC:
/* 805D1FFC  57 A0 20 36 */	slwi r0, r29, 4
/* 805D2000  38 61 00 08 */	addi r3, r1, 8
/* 805D2004  7C 63 02 14 */	add r3, r3, r0
/* 805D2008  3B BD 00 01 */	addi r29, r29, 1
/* 805D200C  83 63 00 00 */	lwz r27, 0(r3)
/* 805D2010  2C 1D 01 00 */	cmpwi r29, 0x100
/* 805D2014  83 43 00 04 */	lwz r26, 4(r3)
/* 805D2018  83 C3 00 08 */	lwz r30, 8(r3)
/* 805D201C  3A FB FF FF */	addi r23, r27, -1
/* 805D2020  83 03 00 0C */	lwz r24, 0xc(r3)
/* 805D2024  3A DA 00 01 */	addi r22, r26, 1
/* 805D2028  7F D9 F3 78 */	mr r25, r30
/* 805D202C  40 82 00 08 */	bne lbl_805D2034
/* 805D2030  3B A0 00 00 */	li r29, 0
lbl_805D2034:
/* 805D2034  7E 83 A3 78 */	mr r3, r20
/* 805D2038  7F 64 DB 78 */	mr r4, r27
/* 805D203C  7F 25 CB 78 */	mr r5, r25
/* 805D2040  4B FF FE 61 */	bl mDE_get_pal_on_cursor
/* 805D2044  7C 15 18 00 */	cmpw r21, r3
/* 805D2048  41 82 04 C0 */	beq lbl_805D2508
/* 805D204C  48 00 00 28 */	b lbl_805D2074
lbl_805D2050:
/* 805D2050  3B 5A 00 01 */	addi r26, r26, 1
/* 805D2054  7E 83 A3 78 */	mr r3, r20
/* 805D2058  7F 44 D3 78 */	mr r4, r26
/* 805D205C  7F 25 CB 78 */	mr r5, r25
/* 805D2060  4B FF FE 41 */	bl mDE_get_pal_on_cursor
/* 805D2064  7C 1F 18 00 */	cmpw r31, r3
/* 805D2068  41 82 00 0C */	beq lbl_805D2074
/* 805D206C  3B 5A FF FF */	addi r26, r26, -1
/* 805D2070  48 00 00 34 */	b lbl_805D20A4
lbl_805D2074:
/* 805D2074  2C 1A 00 20 */	cmpwi r26, 0x20
/* 805D2078  41 80 FF D8 */	blt lbl_805D2050
/* 805D207C  48 00 00 28 */	b lbl_805D20A4
lbl_805D2080:
/* 805D2080  3B 7B FF FF */	addi r27, r27, -1
/* 805D2084  7E 83 A3 78 */	mr r3, r20
/* 805D2088  7F 64 DB 78 */	mr r4, r27
/* 805D208C  7F 25 CB 78 */	mr r5, r25
/* 805D2090  4B FF FE 11 */	bl mDE_get_pal_on_cursor
/* 805D2094  7C 1F 18 00 */	cmpw r31, r3
/* 805D2098  41 82 00 0C */	beq lbl_805D20A4
/* 805D209C  3B 7B 00 01 */	addi r27, r27, 1
/* 805D20A0  48 00 00 0C */	b lbl_805D20AC
lbl_805D20A4:
/* 805D20A4  2C 1B 00 00 */	cmpwi r27, 0
/* 805D20A8  41 81 FF D8 */	bgt lbl_805D2080
lbl_805D20AC:
/* 805D20AC  7F 71 DB 78 */	mr r17, r27
/* 805D20B0  48 00 00 1C */	b lbl_805D20CC
lbl_805D20B4:
/* 805D20B4  7E 83 A3 78 */	mr r3, r20
/* 805D20B8  7E 24 8B 78 */	mr r4, r17
/* 805D20BC  7F 25 CB 78 */	mr r5, r25
/* 805D20C0  7E A6 AB 78 */	mr r6, r21
/* 805D20C4  4B FF FE 5D */	bl mDE_set_pal_on_cursor
/* 805D20C8  3A 31 00 01 */	addi r17, r17, 1
lbl_805D20CC:
/* 805D20CC  7C 11 D0 00 */	cmpw r17, r26
/* 805D20D0  40 81 FF E4 */	ble lbl_805D20B4
/* 805D20D4  37 39 FF FF */	addic. r25, r25, -1
/* 805D20D8  41 80 02 14 */	blt lbl_805D22EC
/* 805D20DC  7C 19 C0 00 */	cmpw r25, r24
/* 805D20E0  40 82 01 60 */	bne lbl_805D2240
/* 805D20E4  7F 71 DB 78 */	mr r17, r27
/* 805D20E8  3A 79 00 01 */	addi r19, r25, 1
/* 805D20EC  48 00 00 9C */	b lbl_805D2188
/* 805D20F0  48 00 00 20 */	b lbl_805D2110
lbl_805D20F4:
/* 805D20F4  7E 83 A3 78 */	mr r3, r20
/* 805D20F8  7E 24 8B 78 */	mr r4, r17
/* 805D20FC  7F 25 CB 78 */	mr r5, r25
/* 805D2100  4B FF FD A1 */	bl mDE_get_pal_on_cursor
/* 805D2104  7C 1F 18 00 */	cmpw r31, r3
/* 805D2108  41 82 00 10 */	beq lbl_805D2118
/* 805D210C  3A 31 00 01 */	addi r17, r17, 1
lbl_805D2110:
/* 805D2110  7C 11 B8 00 */	cmpw r17, r23
/* 805D2114  41 80 FF E0 */	blt lbl_805D20F4
lbl_805D2118:
/* 805D2118  7E 83 A3 78 */	mr r3, r20
/* 805D211C  7E 24 8B 78 */	mr r4, r17
/* 805D2120  7F 25 CB 78 */	mr r5, r25
/* 805D2124  4B FF FD 7D */	bl mDE_get_pal_on_cursor
/* 805D2128  7C 1F 18 00 */	cmpw r31, r3
/* 805D212C  40 82 00 64 */	bne lbl_805D2190
/* 805D2130  57 80 20 36 */	slwi r0, r28, 4
/* 805D2134  3A 41 00 08 */	addi r18, r1, 8
/* 805D2138  7E 52 02 14 */	add r18, r18, r0
/* 805D213C  92 32 00 00 */	stw r17, 0(r18)
/* 805D2140  48 00 00 20 */	b lbl_805D2160
lbl_805D2144:
/* 805D2144  7E 83 A3 78 */	mr r3, r20
/* 805D2148  7E 24 8B 78 */	mr r4, r17
/* 805D214C  7F 25 CB 78 */	mr r5, r25
/* 805D2150  4B FF FD 51 */	bl mDE_get_pal_on_cursor
/* 805D2154  7C 1F 18 00 */	cmpw r31, r3
/* 805D2158  40 82 00 10 */	bne lbl_805D2168
/* 805D215C  3A 31 00 01 */	addi r17, r17, 1
lbl_805D2160:
/* 805D2160  7C 11 B8 00 */	cmpw r17, r23
/* 805D2164  40 81 FF E0 */	ble lbl_805D2144
lbl_805D2168:
/* 805D2168  38 11 FF FF */	addi r0, r17, -1
/* 805D216C  3B 9C 00 01 */	addi r28, r28, 1
/* 805D2170  90 12 00 04 */	stw r0, 4(r18)
/* 805D2174  2C 1C 01 00 */	cmpwi r28, 0x100
/* 805D2178  93 32 00 08 */	stw r25, 8(r18)
/* 805D217C  92 72 00 0C */	stw r19, 0xc(r18)
/* 805D2180  40 82 00 08 */	bne lbl_805D2188
/* 805D2184  3B 80 00 00 */	li r28, 0
lbl_805D2188:
/* 805D2188  7C 11 B8 00 */	cmpw r17, r23
/* 805D218C  40 81 FF 84 */	ble lbl_805D2110
lbl_805D2190:
/* 805D2190  7E D1 B3 78 */	mr r17, r22
/* 805D2194  3A 79 00 01 */	addi r19, r25, 1
/* 805D2198  48 00 00 9C */	b lbl_805D2234
/* 805D219C  48 00 00 20 */	b lbl_805D21BC
lbl_805D21A0:
/* 805D21A0  7E 83 A3 78 */	mr r3, r20
/* 805D21A4  7E 24 8B 78 */	mr r4, r17
/* 805D21A8  7F 25 CB 78 */	mr r5, r25
/* 805D21AC  4B FF FC F5 */	bl mDE_get_pal_on_cursor
/* 805D21B0  7C 1F 18 00 */	cmpw r31, r3
/* 805D21B4  41 82 00 10 */	beq lbl_805D21C4
/* 805D21B8  3A 31 00 01 */	addi r17, r17, 1
lbl_805D21BC:
/* 805D21BC  7C 11 D0 00 */	cmpw r17, r26
/* 805D21C0  41 80 FF E0 */	blt lbl_805D21A0
lbl_805D21C4:
/* 805D21C4  7E 83 A3 78 */	mr r3, r20
/* 805D21C8  7E 24 8B 78 */	mr r4, r17
/* 805D21CC  7F 25 CB 78 */	mr r5, r25
/* 805D21D0  4B FF FC D1 */	bl mDE_get_pal_on_cursor
/* 805D21D4  7C 1F 18 00 */	cmpw r31, r3
/* 805D21D8  40 82 01 14 */	bne lbl_805D22EC
/* 805D21DC  57 80 20 36 */	slwi r0, r28, 4
/* 805D21E0  3A 41 00 08 */	addi r18, r1, 8
/* 805D21E4  7E 52 02 14 */	add r18, r18, r0
/* 805D21E8  92 32 00 00 */	stw r17, 0(r18)
/* 805D21EC  48 00 00 20 */	b lbl_805D220C
lbl_805D21F0:
/* 805D21F0  7E 83 A3 78 */	mr r3, r20
/* 805D21F4  7E 24 8B 78 */	mr r4, r17
/* 805D21F8  7F 25 CB 78 */	mr r5, r25
/* 805D21FC  4B FF FC A5 */	bl mDE_get_pal_on_cursor
/* 805D2200  7C 1F 18 00 */	cmpw r31, r3
/* 805D2204  40 82 00 10 */	bne lbl_805D2214
/* 805D2208  3A 31 00 01 */	addi r17, r17, 1
lbl_805D220C:
/* 805D220C  7C 11 D0 00 */	cmpw r17, r26
/* 805D2210  40 81 FF E0 */	ble lbl_805D21F0
lbl_805D2214:
/* 805D2214  38 11 FF FF */	addi r0, r17, -1
/* 805D2218  3B 9C 00 01 */	addi r28, r28, 1
/* 805D221C  90 12 00 04 */	stw r0, 4(r18)
/* 805D2220  2C 1C 01 00 */	cmpwi r28, 0x100
/* 805D2224  93 32 00 08 */	stw r25, 8(r18)
/* 805D2228  92 72 00 0C */	stw r19, 0xc(r18)
/* 805D222C  40 82 00 08 */	bne lbl_805D2234
/* 805D2230  3B 80 00 00 */	li r28, 0
lbl_805D2234:
/* 805D2234  7C 11 D0 00 */	cmpw r17, r26
/* 805D2238  40 81 FF 84 */	ble lbl_805D21BC
/* 805D223C  48 00 00 B0 */	b lbl_805D22EC
lbl_805D2240:
/* 805D2240  7F 71 DB 78 */	mr r17, r27
/* 805D2244  3A 79 00 01 */	addi r19, r25, 1
/* 805D2248  48 00 00 9C */	b lbl_805D22E4
/* 805D224C  48 00 00 20 */	b lbl_805D226C
lbl_805D2250:
/* 805D2250  7E 83 A3 78 */	mr r3, r20
/* 805D2254  7E 24 8B 78 */	mr r4, r17
/* 805D2258  7F 25 CB 78 */	mr r5, r25
/* 805D225C  4B FF FC 45 */	bl mDE_get_pal_on_cursor
/* 805D2260  7C 1F 18 00 */	cmpw r31, r3
/* 805D2264  41 82 00 10 */	beq lbl_805D2274
/* 805D2268  3A 31 00 01 */	addi r17, r17, 1
lbl_805D226C:
/* 805D226C  7C 11 D0 00 */	cmpw r17, r26
/* 805D2270  41 80 FF E0 */	blt lbl_805D2250
lbl_805D2274:
/* 805D2274  7E 83 A3 78 */	mr r3, r20
/* 805D2278  7E 24 8B 78 */	mr r4, r17
/* 805D227C  7F 25 CB 78 */	mr r5, r25
/* 805D2280  4B FF FC 21 */	bl mDE_get_pal_on_cursor
/* 805D2284  7C 1F 18 00 */	cmpw r31, r3
/* 805D2288  40 82 00 64 */	bne lbl_805D22EC
/* 805D228C  57 80 20 36 */	slwi r0, r28, 4
/* 805D2290  3A 41 00 08 */	addi r18, r1, 8
/* 805D2294  7E 52 02 14 */	add r18, r18, r0
/* 805D2298  92 32 00 00 */	stw r17, 0(r18)
/* 805D229C  48 00 00 20 */	b lbl_805D22BC
lbl_805D22A0:
/* 805D22A0  7E 83 A3 78 */	mr r3, r20
/* 805D22A4  7E 24 8B 78 */	mr r4, r17
/* 805D22A8  7F 25 CB 78 */	mr r5, r25
/* 805D22AC  4B FF FB F5 */	bl mDE_get_pal_on_cursor
/* 805D22B0  7C 1F 18 00 */	cmpw r31, r3
/* 805D22B4  40 82 00 10 */	bne lbl_805D22C4
/* 805D22B8  3A 31 00 01 */	addi r17, r17, 1
lbl_805D22BC:
/* 805D22BC  7C 11 D0 00 */	cmpw r17, r26
/* 805D22C0  40 81 FF E0 */	ble lbl_805D22A0
lbl_805D22C4:
/* 805D22C4  38 11 FF FF */	addi r0, r17, -1
/* 805D22C8  3B 9C 00 01 */	addi r28, r28, 1
/* 805D22CC  90 12 00 04 */	stw r0, 4(r18)
/* 805D22D0  2C 1C 01 00 */	cmpwi r28, 0x100
/* 805D22D4  93 32 00 08 */	stw r25, 8(r18)
/* 805D22D8  92 72 00 0C */	stw r19, 0xc(r18)
/* 805D22DC  40 82 00 08 */	bne lbl_805D22E4
/* 805D22E0  3B 80 00 00 */	li r28, 0
lbl_805D22E4:
/* 805D22E4  7C 11 D0 00 */	cmpw r17, r26
/* 805D22E8  40 81 FF 84 */	ble lbl_805D226C
lbl_805D22EC:
/* 805D22EC  3B 3E 00 01 */	addi r25, r30, 1
/* 805D22F0  2C 19 00 20 */	cmpwi r25, 0x20
/* 805D22F4  41 81 02 14 */	bgt lbl_805D2508
/* 805D22F8  7C 19 C0 00 */	cmpw r25, r24
/* 805D22FC  40 82 01 60 */	bne lbl_805D245C
/* 805D2300  7F 73 DB 78 */	mr r19, r27
/* 805D2304  3B 19 FF FF */	addi r24, r25, -1
/* 805D2308  48 00 00 9C */	b lbl_805D23A4
/* 805D230C  48 00 00 20 */	b lbl_805D232C
lbl_805D2310:
/* 805D2310  7E 83 A3 78 */	mr r3, r20
/* 805D2314  7E 64 9B 78 */	mr r4, r19
/* 805D2318  7F 25 CB 78 */	mr r5, r25
/* 805D231C  4B FF FB 85 */	bl mDE_get_pal_on_cursor
/* 805D2320  7C 1F 18 00 */	cmpw r31, r3
/* 805D2324  41 82 00 10 */	beq lbl_805D2334
/* 805D2328  3A 73 00 01 */	addi r19, r19, 1
lbl_805D232C:
/* 805D232C  7C 13 B8 00 */	cmpw r19, r23
/* 805D2330  41 80 FF E0 */	blt lbl_805D2310
lbl_805D2334:
/* 805D2334  7E 83 A3 78 */	mr r3, r20
/* 805D2338  7E 64 9B 78 */	mr r4, r19
/* 805D233C  7F 25 CB 78 */	mr r5, r25
/* 805D2340  4B FF FB 61 */	bl mDE_get_pal_on_cursor
/* 805D2344  7C 1F 18 00 */	cmpw r31, r3
/* 805D2348  40 82 00 64 */	bne lbl_805D23AC
/* 805D234C  57 80 20 36 */	slwi r0, r28, 4
/* 805D2350  3A 41 00 08 */	addi r18, r1, 8
/* 805D2354  7E 52 02 14 */	add r18, r18, r0
/* 805D2358  92 72 00 00 */	stw r19, 0(r18)
/* 805D235C  48 00 00 20 */	b lbl_805D237C
lbl_805D2360:
/* 805D2360  7E 83 A3 78 */	mr r3, r20
/* 805D2364  7E 64 9B 78 */	mr r4, r19
/* 805D2368  7F 25 CB 78 */	mr r5, r25
/* 805D236C  4B FF FB 35 */	bl mDE_get_pal_on_cursor
/* 805D2370  7C 1F 18 00 */	cmpw r31, r3
/* 805D2374  40 82 00 10 */	bne lbl_805D2384
/* 805D2378  3A 73 00 01 */	addi r19, r19, 1
lbl_805D237C:
/* 805D237C  7C 13 B8 00 */	cmpw r19, r23
/* 805D2380  40 81 FF E0 */	ble lbl_805D2360
lbl_805D2384:
/* 805D2384  38 13 FF FF */	addi r0, r19, -1
/* 805D2388  3B 9C 00 01 */	addi r28, r28, 1
/* 805D238C  90 12 00 04 */	stw r0, 4(r18)
/* 805D2390  2C 1C 01 00 */	cmpwi r28, 0x100
/* 805D2394  93 32 00 08 */	stw r25, 8(r18)
/* 805D2398  93 12 00 0C */	stw r24, 0xc(r18)
/* 805D239C  40 82 00 08 */	bne lbl_805D23A4
/* 805D23A0  3B 80 00 00 */	li r28, 0
lbl_805D23A4:
/* 805D23A4  7C 13 B8 00 */	cmpw r19, r23
/* 805D23A8  40 81 FF 84 */	ble lbl_805D232C
lbl_805D23AC:
/* 805D23AC  7E D3 B3 78 */	mr r19, r22
/* 805D23B0  3A D9 FF FF */	addi r22, r25, -1
/* 805D23B4  48 00 00 9C */	b lbl_805D2450
/* 805D23B8  48 00 00 20 */	b lbl_805D23D8
lbl_805D23BC:
/* 805D23BC  7E 83 A3 78 */	mr r3, r20
/* 805D23C0  7E 64 9B 78 */	mr r4, r19
/* 805D23C4  7F 25 CB 78 */	mr r5, r25
/* 805D23C8  4B FF FA D9 */	bl mDE_get_pal_on_cursor
/* 805D23CC  7C 1F 18 00 */	cmpw r31, r3
/* 805D23D0  41 82 00 10 */	beq lbl_805D23E0
/* 805D23D4  3A 73 00 01 */	addi r19, r19, 1
lbl_805D23D8:
/* 805D23D8  7C 13 D0 00 */	cmpw r19, r26
/* 805D23DC  41 80 FF E0 */	blt lbl_805D23BC
lbl_805D23E0:
/* 805D23E0  7E 83 A3 78 */	mr r3, r20
/* 805D23E4  7E 64 9B 78 */	mr r4, r19
/* 805D23E8  7F 25 CB 78 */	mr r5, r25
/* 805D23EC  4B FF FA B5 */	bl mDE_get_pal_on_cursor
/* 805D23F0  7C 1F 18 00 */	cmpw r31, r3
/* 805D23F4  40 82 01 14 */	bne lbl_805D2508
/* 805D23F8  57 80 20 36 */	slwi r0, r28, 4
/* 805D23FC  3A 41 00 08 */	addi r18, r1, 8
/* 805D2400  7E 52 02 14 */	add r18, r18, r0
/* 805D2404  92 72 00 00 */	stw r19, 0(r18)
/* 805D2408  48 00 00 20 */	b lbl_805D2428
lbl_805D240C:
/* 805D240C  7E 83 A3 78 */	mr r3, r20
/* 805D2410  7E 64 9B 78 */	mr r4, r19
/* 805D2414  7F 25 CB 78 */	mr r5, r25
/* 805D2418  4B FF FA 89 */	bl mDE_get_pal_on_cursor
/* 805D241C  7C 1F 18 00 */	cmpw r31, r3
/* 805D2420  40 82 00 10 */	bne lbl_805D2430
/* 805D2424  3A 73 00 01 */	addi r19, r19, 1
lbl_805D2428:
/* 805D2428  7C 13 D0 00 */	cmpw r19, r26
/* 805D242C  40 81 FF E0 */	ble lbl_805D240C
lbl_805D2430:
/* 805D2430  38 13 FF FF */	addi r0, r19, -1
/* 805D2434  3B 9C 00 01 */	addi r28, r28, 1
/* 805D2438  90 12 00 04 */	stw r0, 4(r18)
/* 805D243C  2C 1C 01 00 */	cmpwi r28, 0x100
/* 805D2440  93 32 00 08 */	stw r25, 8(r18)
/* 805D2444  92 D2 00 0C */	stw r22, 0xc(r18)
/* 805D2448  40 82 00 08 */	bne lbl_805D2450
/* 805D244C  3B 80 00 00 */	li r28, 0
lbl_805D2450:
/* 805D2450  7C 13 D0 00 */	cmpw r19, r26
/* 805D2454  40 81 FF 84 */	ble lbl_805D23D8
/* 805D2458  48 00 00 B0 */	b lbl_805D2508
lbl_805D245C:
/* 805D245C  7F 73 DB 78 */	mr r19, r27
/* 805D2460  3A D9 FF FF */	addi r22, r25, -1
/* 805D2464  48 00 00 9C */	b lbl_805D2500
/* 805D2468  48 00 00 20 */	b lbl_805D2488
lbl_805D246C:
/* 805D246C  7E 83 A3 78 */	mr r3, r20
/* 805D2470  7E 64 9B 78 */	mr r4, r19
/* 805D2474  7F 25 CB 78 */	mr r5, r25
/* 805D2478  4B FF FA 29 */	bl mDE_get_pal_on_cursor
/* 805D247C  7C 1F 18 00 */	cmpw r31, r3
/* 805D2480  41 82 00 10 */	beq lbl_805D2490
/* 805D2484  3A 73 00 01 */	addi r19, r19, 1
lbl_805D2488:
/* 805D2488  7C 13 D0 00 */	cmpw r19, r26
/* 805D248C  41 80 FF E0 */	blt lbl_805D246C
lbl_805D2490:
/* 805D2490  7E 83 A3 78 */	mr r3, r20
/* 805D2494  7E 64 9B 78 */	mr r4, r19
/* 805D2498  7F 25 CB 78 */	mr r5, r25
/* 805D249C  4B FF FA 05 */	bl mDE_get_pal_on_cursor
/* 805D24A0  7C 1F 18 00 */	cmpw r31, r3
/* 805D24A4  40 82 00 64 */	bne lbl_805D2508
/* 805D24A8  57 80 20 36 */	slwi r0, r28, 4
/* 805D24AC  3A 41 00 08 */	addi r18, r1, 8
/* 805D24B0  7E 52 02 14 */	add r18, r18, r0
/* 805D24B4  92 72 00 00 */	stw r19, 0(r18)
/* 805D24B8  48 00 00 20 */	b lbl_805D24D8
lbl_805D24BC:
/* 805D24BC  7E 83 A3 78 */	mr r3, r20
/* 805D24C0  7E 64 9B 78 */	mr r4, r19
/* 805D24C4  7F 25 CB 78 */	mr r5, r25
/* 805D24C8  4B FF F9 D9 */	bl mDE_get_pal_on_cursor
/* 805D24CC  7C 1F 18 00 */	cmpw r31, r3
/* 805D24D0  40 82 00 10 */	bne lbl_805D24E0
/* 805D24D4  3A 73 00 01 */	addi r19, r19, 1
lbl_805D24D8:
/* 805D24D8  7C 13 D0 00 */	cmpw r19, r26
/* 805D24DC  40 81 FF E0 */	ble lbl_805D24BC
lbl_805D24E0:
/* 805D24E0  38 13 FF FF */	addi r0, r19, -1
/* 805D24E4  3B 9C 00 01 */	addi r28, r28, 1
/* 805D24E8  90 12 00 04 */	stw r0, 4(r18)
/* 805D24EC  2C 1C 01 00 */	cmpwi r28, 0x100
/* 805D24F0  93 32 00 08 */	stw r25, 8(r18)
/* 805D24F4  92 D2 00 0C */	stw r22, 0xc(r18)
/* 805D24F8  40 82 00 08 */	bne lbl_805D2500
/* 805D24FC  3B 80 00 00 */	li r28, 0
lbl_805D2500:
/* 805D2500  7C 13 D0 00 */	cmpw r19, r26
/* 805D2504  40 81 FF 84 */	ble lbl_805D2488
lbl_805D2508:
/* 805D2508  7C 1D E0 00 */	cmpw r29, r28
/* 805D250C  40 82 FA F0 */	bne lbl_805D1FFC
/* 805D2510  39 61 10 50 */	addi r11, r1, 0x1050
/* 805D2514  4B AC 89 DD */	bl func_8009AEF0
/* 805D2518  80 01 10 54 */	lwz r0, 0x1054(r1)
/* 805D251C  7C 08 03 A6 */	mtlr r0
/* 805D2520  38 21 10 50 */	addi r1, r1, 0x1050
/* 805D2524  4E 80 00 20 */	blr 
