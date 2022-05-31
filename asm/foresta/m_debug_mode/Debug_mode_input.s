lbl_8039775C:
/* 8039775C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80397760  7C 08 02 A6 */	mflr r0
/* 80397764  90 01 00 34 */	stw r0, 0x34(r1)
/* 80397768  39 61 00 30 */	addi r11, r1, 0x30
/* 8039776C  4B D0 37 55 */	bl func_8009AEC0
/* 80397770  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80397774  3C C0 81 16 */	lis r6, data_81166148@ha /* 0x81166148@ha */
/* 80397778  80 E4 61 38 */	lwz r7, debug_mode@l(r4)  /* 0x81166138@l */
/* 8039777C  3B C6 61 48 */	addi r30, r6, data_81166148@l /* 0x81166148@l */
/* 80397780  80 1E 0D EC */	lwz r0, 0xdec(r30)
/* 80397784  3C A0 80 65 */	lis r5, data_80651258@ha /* 0x80651258@ha */
/* 80397788  88 87 00 01 */	lbz r4, 1(r7)
/* 8039778C  3B E5 12 58 */	addi r31, r5, data_80651258@l /* 0x80651258@l */
/* 80397790  28 00 00 00 */	cmplwi r0, 0
/* 80397794  88 A7 00 00 */	lbz r5, 0(r7)
/* 80397798  1C 04 00 06 */	mulli r0, r4, 6
/* 8039779C  7C 7B 1B 78 */	mr r27, r3
/* 803977A0  7C 85 02 14 */	add r4, r5, r0
/* 803977A4  38 04 FF FF */	addi r0, r4, -1
/* 803977A8  54 1D 20 36 */	slwi r29, r0, 4
/* 803977AC  40 82 00 10 */	bne lbl_803977BC
/* 803977B0  4B FF FC B1 */	bl Debug_console
/* 803977B4  2C 03 00 00 */	cmpwi r3, 0
/* 803977B8  40 82 05 68 */	bne lbl_80397D20
lbl_803977BC:
/* 803977BC  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803977C0  64 60 FF FF */	oris r0, r3, 0xffff
/* 803977C4  54 7C 05 2E */	rlwinm r28, r3, 0, 0x14, 0x17
/* 803977C8  60 00 FF DF */	ori r0, r0, 0xffdf
/* 803977CC  2C 00 FF FF */	cmpwi r0, -1
/* 803977D0  40 82 01 0C */	bne lbl_803978DC
/* 803977D4  64 60 FF FF */	oris r0, r3, 0xffff
/* 803977D8  60 00 FF EF */	ori r0, r0, 0xffef
/* 803977DC  2C 00 FF FF */	cmpwi r0, -1
/* 803977E0  40 82 00 FC */	bne lbl_803978DC
/* 803977E4  4B CE FD D5 */	bl DVDGetCurrentDiskID
/* 803977E8  28 03 00 00 */	cmplwi r3, 0
/* 803977EC  41 82 00 2C */	beq lbl_80397818
/* 803977F0  89 23 00 07 */	lbz r9, 7(r3)
/* 803977F4  7C 67 1B 78 */	mr r7, r3
/* 803977F8  39 03 00 04 */	addi r8, r3, 4
/* 803977FC  38 DF 01 80 */	addi r6, r31, 0x180
/* 80397800  7D 2A 4B 78 */	mr r10, r9
/* 80397804  38 60 00 32 */	li r3, 0x32
/* 80397808  38 80 00 32 */	li r4, 0x32
/* 8039780C  38 A0 00 01 */	li r5, 1
/* 80397810  4C C6 31 82 */	crclr 6
/* 80397814  4B CC 95 D1 */	bl JW_JUTReport
lbl_80397818:
/* 80397818  3C 60 80 0E */	lis r3, boot_copyDate@ha /* 0x800E2308@ha */
/* 8039781C  80 E3 23 08 */	lwz r7, boot_copyDate@l(r3)  /* 0x800E2308@l */
/* 80397820  28 07 00 00 */	cmplwi r7, 0
/* 80397824  41 82 00 1C */	beq lbl_80397840
/* 80397828  38 DF 01 98 */	addi r6, r31, 0x198
/* 8039782C  38 60 01 40 */	li r3, 0x140
/* 80397830  38 80 00 32 */	li r4, 0x32
/* 80397834  38 A0 00 01 */	li r5, 1
/* 80397838  4C C6 31 82 */	crclr 6
/* 8039783C  4B CC 95 A9 */	bl JW_JUTReport
lbl_80397840:
/* 80397840  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80397844  3C 60 80 20 */	lis r3, osAppNMIBuffer@ha /* 0x80206F60@ha */
/* 80397848  80 A4 B7 A8 */	lwz r5, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 8039784C  3B 23 6F 60 */	addi r25, r3, osAppNMIBuffer@l /* 0x80206F60@l */
/* 80397850  38 00 00 02 */	li r0, 2
/* 80397854  81 39 00 3C */	lwz r9, 0x3c(r25)
/* 80397858  30 65 FF FF */	addic r3, r5, -1
/* 8039785C  38 DF 01 A0 */	addi r6, r31, 0x1a0
/* 80397860  7C E3 29 10 */	subfe r7, r3, r5
/* 80397864  54 08 0F FE */	srwi r8, r0, 0x1f
/* 80397868  7C AA FE 70 */	srawi r10, r5, 0x1f
/* 8039786C  38 60 00 32 */	li r3, 0x32
/* 80397870  7C 00 28 10 */	subfc r0, r0, r5
/* 80397874  38 80 00 3C */	li r4, 0x3c
/* 80397878  38 A0 00 01 */	li r5, 1
/* 8039787C  7D 0A 41 14 */	adde r8, r10, r8
/* 80397880  4C C6 31 82 */	crclr 6
/* 80397884  4B CC 95 61 */	bl JW_JUTReport
/* 80397888  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8039788C  64 00 FF FF */	oris r0, r0, 0xffff
/* 80397890  60 00 DF FF */	ori r0, r0, 0xdfff
/* 80397894  2C 00 FF FF */	cmpwi r0, -1
/* 80397898  40 82 00 44 */	bne lbl_803978DC
/* 8039789C  3B 00 00 00 */	li r24, 0
/* 803978A0  3B 40 00 00 */	li r26, 0
lbl_803978A4:
/* 803978A4  80 99 00 3C */	lwz r4, 0x3c(r25)
/* 803978A8  20 18 00 1F */	subfic r0, r24, 0x1f
/* 803978AC  38 7A 00 32 */	addi r3, r26, 0x32
/* 803978B0  38 DF 01 B4 */	addi r6, r31, 0x1b4
/* 803978B4  7C 80 06 30 */	sraw r0, r4, r0
/* 803978B8  38 80 00 46 */	li r4, 0x46
/* 803978BC  54 07 07 FE */	clrlwi r7, r0, 0x1f
/* 803978C0  38 A0 00 01 */	li r5, 1
/* 803978C4  4C C6 31 82 */	crclr 6
/* 803978C8  4B CC 95 1D */	bl JW_JUTReport
/* 803978CC  3B 18 00 01 */	addi r24, r24, 1
/* 803978D0  3B 5A 00 0C */	addi r26, r26, 0xc
/* 803978D4  2C 18 00 20 */	cmpwi r24, 0x20
/* 803978D8  41 80 FF CC */	blt lbl_803978A4
lbl_803978DC:
/* 803978DC  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803978E0  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803978E4  2C 00 00 02 */	cmpwi r0, 2
/* 803978E8  41 80 00 D0 */	blt lbl_803979B8
/* 803978EC  A0 BB 00 00 */	lhz r5, 0(r27)
/* 803978F0  64 A0 FF FF */	oris r0, r5, 0xffff
/* 803978F4  60 00 FF DF */	ori r0, r0, 0xffdf
/* 803978F8  2C 00 FF FF */	cmpwi r0, -1
/* 803978FC  41 82 00 24 */	beq lbl_80397920
/* 80397900  64 A0 FF FF */	oris r0, r5, 0xffff
/* 80397904  60 00 FF EF */	ori r0, r0, 0xffef
/* 80397908  2C 00 FF FF */	cmpwi r0, -1
/* 8039790C  41 82 00 14 */	beq lbl_80397920
/* 80397910  64 A0 FF FF */	oris r0, r5, 0xffff
/* 80397914  60 00 EF FF */	ori r0, r0, 0xefff
/* 80397918  2C 00 FF FF */	cmpwi r0, -1
/* 8039791C  40 82 00 9C */	bne lbl_803979B8
lbl_80397920:
/* 80397920  38 00 00 26 */	li r0, 0x26
/* 80397924  38 E0 00 00 */	li r7, 0
/* 80397928  38 60 00 00 */	li r3, 0
/* 8039792C  7C 09 03 A6 */	mtctr r0
lbl_80397930:
/* 80397930  38 DF 00 E8 */	addi r6, r31, 0xe8
/* 80397934  7C C6 1A 14 */	add r6, r6, r3
/* 80397938  A0 06 00 00 */	lhz r0, 0(r6)
/* 8039793C  7C A0 03 38 */	orc r0, r5, r0
/* 80397940  2C 00 FF FF */	cmpwi r0, -1
/* 80397944  40 82 00 18 */	bne lbl_8039795C
/* 80397948  A0 9B 00 0C */	lhz r4, 0xc(r27)
/* 8039794C  A0 06 00 02 */	lhz r0, 2(r6)
/* 80397950  7C 80 03 38 */	orc r0, r4, r0
/* 80397954  2C 00 FF FF */	cmpwi r0, -1
/* 80397958  41 82 00 10 */	beq lbl_80397968
lbl_8039795C:
/* 8039795C  38 E7 00 01 */	addi r7, r7, 1
/* 80397960  38 63 00 04 */	addi r3, r3, 4
/* 80397964  42 00 FF CC */	bdnz lbl_80397930
lbl_80397968:
/* 80397968  2C 07 00 26 */	cmpwi r7, 0x26
/* 8039796C  40 80 02 68 */	bge lbl_80397BD4
/* 80397970  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397974  84 A3 61 38 */	lwzu r5, debug_mode@l(r3)  /* 0x81166138@l */
/* 80397978  88 05 00 01 */	lbz r0, 1(r5)
/* 8039797C  7C 07 00 00 */	cmpw r7, r0
/* 80397980  40 82 00 24 */	bne lbl_803979A4
/* 80397984  88 85 00 00 */	lbz r4, 0(r5)
/* 80397988  38 60 00 07 */	li r3, 7
/* 8039798C  38 84 00 01 */	addi r4, r4, 1
/* 80397990  7C 04 1B D6 */	divw r0, r4, r3
/* 80397994  7C 00 19 D6 */	mullw r0, r0, r3
/* 80397998  7C 00 20 50 */	subf r0, r0, r4
/* 8039799C  98 05 00 00 */	stb r0, 0(r5)
/* 803979A0  48 00 02 34 */	b lbl_80397BD4
lbl_803979A4:
/* 803979A4  98 E5 00 01 */	stb r7, 1(r5)
/* 803979A8  38 00 00 00 */	li r0, 0
/* 803979AC  80 63 00 00 */	lwz r3, 0(r3)
/* 803979B0  98 03 00 00 */	stb r0, 0(r3)
/* 803979B4  48 00 02 20 */	b lbl_80397BD4
lbl_803979B8:
/* 803979B8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 803979BC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 803979C0  80 A4 00 00 */	lwz r5, 0(r4)
/* 803979C4  88 05 00 00 */	lbz r0, 0(r5)
/* 803979C8  2C 00 00 07 */	cmpwi r0, 7
/* 803979CC  40 80 02 08 */	bge lbl_80397BD4
/* 803979D0  2C 00 00 01 */	cmpwi r0, 1
/* 803979D4  40 80 00 08 */	bge lbl_803979DC
/* 803979D8  48 00 01 FC */	b lbl_80397BD4
lbl_803979DC:
/* 803979DC  80 05 00 04 */	lwz r0, 4(r5)
/* 803979E0  7C 1C 00 00 */	cmpw r28, r0
/* 803979E4  40 82 00 34 */	bne lbl_80397A18
/* 803979E8  88 65 00 03 */	lbz r3, 3(r5)
/* 803979EC  7C 60 07 75 */	extsb. r0, r3
/* 803979F0  41 81 00 10 */	bgt lbl_80397A00
/* 803979F4  38 00 00 01 */	li r0, 1
/* 803979F8  98 05 00 03 */	stb r0, 3(r5)
/* 803979FC  48 00 00 2C */	b lbl_80397A28
lbl_80397A00:
/* 80397A00  38 03 FF FF */	addi r0, r3, -1
/* 80397A04  98 05 00 03 */	stb r0, 3(r5)
/* 80397A08  80 64 00 00 */	lwz r3, 0(r4)
/* 80397A0C  80 03 00 04 */	lwz r0, 4(r3)
/* 80397A10  7F 9C 02 78 */	xor r28, r28, r0
/* 80397A14  48 00 00 14 */	b lbl_80397A28
lbl_80397A18:
/* 80397A18  38 00 00 10 */	li r0, 0x10
/* 80397A1C  98 05 00 03 */	stb r0, 3(r5)
/* 80397A20  80 64 00 00 */	lwz r3, 0(r4)
/* 80397A24  93 83 00 04 */	stw r28, 4(r3)
lbl_80397A28:
/* 80397A28  57 80 05 EF */	rlwinm. r0, r28, 0, 0x17, 0x17
/* 80397A2C  41 82 00 84 */	beq lbl_80397AB0
/* 80397A30  A0 7B 00 00 */	lhz r3, 0(r27)
/* 80397A34  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397A38  60 00 FF F7 */	ori r0, r0, 0xfff7
/* 80397A3C  2C 00 FF FF */	cmpwi r0, -1
/* 80397A40  40 82 00 0C */	bne lbl_80397A4C
/* 80397A44  38 A0 10 00 */	li r5, 0x1000
/* 80397A48  48 00 01 00 */	b lbl_80397B48
lbl_80397A4C:
/* 80397A4C  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397A50  60 00 FF FB */	ori r0, r0, 0xfffb
/* 80397A54  2C 00 FF FF */	cmpwi r0, -1
/* 80397A58  40 82 00 0C */	bne lbl_80397A64
/* 80397A5C  38 A0 01 00 */	li r5, 0x100
/* 80397A60  48 00 00 E8 */	b lbl_80397B48
lbl_80397A64:
/* 80397A64  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397A68  60 00 3F FF */	ori r0, r0, 0x3fff
/* 80397A6C  2C 00 FF FF */	cmpwi r0, -1
/* 80397A70  40 82 00 0C */	bne lbl_80397A7C
/* 80397A74  38 A0 03 E8 */	li r5, 0x3e8
/* 80397A78  48 00 00 D0 */	b lbl_80397B48
lbl_80397A7C:
/* 80397A7C  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397A80  60 00 7F FF */	ori r0, r0, 0x7fff
/* 80397A84  2C 00 FF FF */	cmpwi r0, -1
/* 80397A88  40 82 00 0C */	bne lbl_80397A94
/* 80397A8C  38 A0 00 64 */	li r5, 0x64
/* 80397A90  48 00 00 B8 */	b lbl_80397B48
lbl_80397A94:
/* 80397A94  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397A98  38 A0 00 01 */	li r5, 1
/* 80397A9C  60 00 BF FF */	ori r0, r0, 0xbfff
/* 80397AA0  2C 00 FF FF */	cmpwi r0, -1
/* 80397AA4  40 82 00 A4 */	bne lbl_80397B48
/* 80397AA8  38 A0 00 0A */	li r5, 0xa
/* 80397AAC  48 00 00 9C */	b lbl_80397B48
lbl_80397AB0:
/* 80397AB0  57 80 05 AD */	rlwinm. r0, r28, 0, 0x16, 0x16
/* 80397AB4  41 82 00 90 */	beq lbl_80397B44
/* 80397AB8  A0 7B 00 00 */	lhz r3, 0(r27)
/* 80397ABC  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397AC0  60 00 FF F7 */	ori r0, r0, 0xfff7
/* 80397AC4  2C 00 FF FF */	cmpwi r0, -1
/* 80397AC8  40 82 00 0C */	bne lbl_80397AD4
/* 80397ACC  38 A0 F0 00 */	li r5, -4096
/* 80397AD0  48 00 00 78 */	b lbl_80397B48
lbl_80397AD4:
/* 80397AD4  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397AD8  60 00 FF FB */	ori r0, r0, 0xfffb
/* 80397ADC  2C 00 FF FF */	cmpwi r0, -1
/* 80397AE0  40 82 00 0C */	bne lbl_80397AEC
/* 80397AE4  38 A0 FF 00 */	li r5, -256
/* 80397AE8  48 00 00 60 */	b lbl_80397B48
lbl_80397AEC:
/* 80397AEC  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397AF0  60 00 3F FF */	ori r0, r0, 0x3fff
/* 80397AF4  2C 00 FF FF */	cmpwi r0, -1
/* 80397AF8  40 82 00 0C */	bne lbl_80397B04
/* 80397AFC  38 A0 FC 18 */	li r5, -1000
/* 80397B00  48 00 00 48 */	b lbl_80397B48
lbl_80397B04:
/* 80397B04  40 82 00 0C */	bne lbl_80397B10
/* 80397B08  38 A0 FC 18 */	li r5, -1000
/* 80397B0C  48 00 00 3C */	b lbl_80397B48
lbl_80397B10:
/* 80397B10  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397B14  60 00 7F FF */	ori r0, r0, 0x7fff
/* 80397B18  2C 00 FF FF */	cmpwi r0, -1
/* 80397B1C  40 82 00 0C */	bne lbl_80397B28
/* 80397B20  38 A0 FF 9C */	li r5, -100
/* 80397B24  48 00 00 24 */	b lbl_80397B48
lbl_80397B28:
/* 80397B28  64 60 FF FF */	oris r0, r3, 0xffff
/* 80397B2C  38 A0 FF FF */	li r5, -1
/* 80397B30  60 00 BF FF */	ori r0, r0, 0xbfff
/* 80397B34  2C 00 FF FF */	cmpwi r0, -1
/* 80397B38  40 82 00 10 */	bne lbl_80397B48
/* 80397B3C  38 A0 FF F6 */	li r5, -10
/* 80397B40  48 00 00 08 */	b lbl_80397B48
lbl_80397B44:
/* 80397B44  38 A0 00 00 */	li r5, 0
lbl_80397B48:
/* 80397B48  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397B4C  57 80 05 29 */	rlwinm. r0, r28, 0, 0x14, 0x14
/* 80397B50  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80397B54  80 64 00 00 */	lwz r3, 0(r4)
/* 80397B58  88 03 00 02 */	lbz r0, 2(r3)
/* 80397B5C  7C 00 07 74 */	extsb r0, r0
/* 80397B60  7C 00 EA 14 */	add r0, r0, r29
/* 80397B64  54 00 08 3C */	slwi r0, r0, 1
/* 80397B68  7C 63 02 14 */	add r3, r3, r0
/* 80397B6C  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80397B70  7C 00 2A 14 */	add r0, r0, r5
/* 80397B74  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80397B78  41 82 00 2C */	beq lbl_80397BA4
/* 80397B7C  80 84 00 00 */	lwz r4, 0(r4)
/* 80397B80  88 64 00 02 */	lbz r3, 2(r4)
/* 80397B84  7C 60 07 75 */	extsb. r0, r3
/* 80397B88  41 81 00 10 */	bgt lbl_80397B98
/* 80397B8C  38 00 00 0F */	li r0, 0xf
/* 80397B90  98 04 00 02 */	stb r0, 2(r4)
/* 80397B94  48 00 00 40 */	b lbl_80397BD4
lbl_80397B98:
/* 80397B98  38 03 FF FF */	addi r0, r3, -1
/* 80397B9C  98 04 00 02 */	stb r0, 2(r4)
/* 80397BA0  48 00 00 34 */	b lbl_80397BD4
lbl_80397BA4:
/* 80397BA4  57 80 05 6B */	rlwinm. r0, r28, 0, 0x15, 0x15
/* 80397BA8  41 82 00 2C */	beq lbl_80397BD4
/* 80397BAC  80 84 00 00 */	lwz r4, 0(r4)
/* 80397BB0  88 64 00 02 */	lbz r3, 2(r4)
/* 80397BB4  7C 60 07 74 */	extsb r0, r3
/* 80397BB8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80397BBC  41 80 00 10 */	blt lbl_80397BCC
/* 80397BC0  38 00 00 00 */	li r0, 0
/* 80397BC4  98 04 00 02 */	stb r0, 2(r4)
/* 80397BC8  48 00 00 0C */	b lbl_80397BD4
lbl_80397BCC:
/* 80397BCC  38 03 00 01 */	addi r0, r3, 1
/* 80397BD0  98 04 00 02 */	stb r0, 2(r4)
lbl_80397BD4:
/* 80397BD4  38 7B FF E8 */	addi r3, r27, -24
/* 80397BD8  4B FF EA 09 */	bl debug_hayakawa_move
/* 80397BDC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80397BE0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80397BE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80397BE8  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397BEC  54 04 04 20 */	rlwinm r4, r0, 0, 0x10, 0x10
/* 80397BF0  3C 04 00 00 */	addis r0, r4, 0
/* 80397BF4  28 00 80 00 */	cmplwi r0, 0x8000
/* 80397BF8  40 82 00 10 */	bne lbl_80397C08
/* 80397BFC  80 1E 0D D4 */	lwz r0, 0xdd4(r30)
/* 80397C00  68 00 00 01 */	xori r0, r0, 1
/* 80397C04  90 1E 0D D4 */	stw r0, 0xdd4(r30)
lbl_80397C08:
/* 80397C08  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397C0C  54 04 04 20 */	rlwinm r4, r0, 0, 0x10, 0x10
/* 80397C10  3C 04 00 00 */	addis r0, r4, 0
/* 80397C14  28 00 80 00 */	cmplwi r0, 0x8000
/* 80397C18  40 82 00 10 */	bne lbl_80397C28
/* 80397C1C  80 1E 0D DC */	lwz r0, 0xddc(r30)
/* 80397C20  68 00 00 01 */	xori r0, r0, 1
/* 80397C24  90 1E 0D DC */	stw r0, 0xddc(r30)
lbl_80397C28:
/* 80397C28  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397C2C  54 04 04 20 */	rlwinm r4, r0, 0, 0x10, 0x10
/* 80397C30  3C 04 00 00 */	addis r0, r4, 0
/* 80397C34  28 00 80 00 */	cmplwi r0, 0x8000
/* 80397C38  40 82 00 10 */	bne lbl_80397C48
/* 80397C3C  80 1E 0D E4 */	lwz r0, 0xde4(r30)
/* 80397C40  68 00 00 01 */	xori r0, r0, 1
/* 80397C44  90 1E 0D E4 */	stw r0, 0xde4(r30)
lbl_80397C48:
/* 80397C48  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397C4C  54 00 05 AC */	rlwinm r0, r0, 0, 0x16, 0x16
/* 80397C50  2C 00 02 00 */	cmpwi r0, 0x200
/* 80397C54  40 82 00 10 */	bne lbl_80397C64
/* 80397C58  80 1E 0D E4 */	lwz r0, 0xde4(r30)
/* 80397C5C  68 00 00 02 */	xori r0, r0, 2
/* 80397C60  90 1E 0D E4 */	stw r0, 0xde4(r30)
lbl_80397C64:
/* 80397C64  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397C68  54 04 04 20 */	rlwinm r4, r0, 0, 0x10, 0x10
/* 80397C6C  3C 04 00 00 */	addis r0, r4, 0
/* 80397C70  28 00 80 00 */	cmplwi r0, 0x8000
/* 80397C74  40 82 00 10 */	bne lbl_80397C84
/* 80397C78  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 80397C7C  68 00 00 01 */	xori r0, r0, 1
/* 80397C80  90 1E 0D D0 */	stw r0, 0xdd0(r30)
lbl_80397C84:
/* 80397C84  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397C88  54 00 05 28 */	rlwinm r0, r0, 0, 0x14, 0x14
/* 80397C8C  2C 00 08 00 */	cmpwi r0, 0x800
/* 80397C90  40 82 00 10 */	bne lbl_80397CA0
/* 80397C94  80 1E 0D E0 */	lwz r0, 0xde0(r30)
/* 80397C98  68 00 00 01 */	xori r0, r0, 1
/* 80397C9C  90 1E 0D E0 */	stw r0, 0xde0(r30)
lbl_80397CA0:
/* 80397CA0  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397CA4  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 80397CA8  2C 00 00 08 */	cmpwi r0, 8
/* 80397CAC  40 82 00 10 */	bne lbl_80397CBC
/* 80397CB0  80 1E 0D E8 */	lwz r0, 0xde8(r30)
/* 80397CB4  68 00 00 01 */	xori r0, r0, 1
/* 80397CB8  90 1E 0D E8 */	stw r0, 0xde8(r30)
lbl_80397CBC:
/* 80397CBC  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80397CC0  80 04 B7 A8 */	lwz r0, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 80397CC4  2C 00 00 02 */	cmpwi r0, 2
/* 80397CC8  41 80 00 20 */	blt lbl_80397CE8
/* 80397CCC  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397CD0  54 00 05 6A */	rlwinm r0, r0, 0, 0x15, 0x15
/* 80397CD4  2C 00 04 00 */	cmpwi r0, 0x400
/* 80397CD8  40 82 00 10 */	bne lbl_80397CE8
/* 80397CDC  80 1E 0D EC */	lwz r0, 0xdec(r30)
/* 80397CE0  68 00 00 01 */	xori r0, r0, 1
/* 80397CE4  90 1E 0D EC */	stw r0, 0xdec(r30)
lbl_80397CE8:
/* 80397CE8  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397CEC  54 00 05 EE */	rlwinm r0, r0, 0, 0x17, 0x17
/* 80397CF0  2C 00 01 00 */	cmpwi r0, 0x100
/* 80397CF4  40 82 00 10 */	bne lbl_80397D04
/* 80397CF8  80 1E 0D F0 */	lwz r0, 0xdf0(r30)
/* 80397CFC  68 00 00 01 */	xori r0, r0, 1
/* 80397D00  90 1E 0D F0 */	stw r0, 0xdf0(r30)
lbl_80397D04:
/* 80397D04  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80397D08  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80397D0C  2C 00 00 01 */	cmpwi r0, 1
/* 80397D10  40 82 00 10 */	bne lbl_80397D20
/* 80397D14  80 1E 0D F4 */	lwz r0, 0xdf4(r30)
/* 80397D18  68 00 00 01 */	xori r0, r0, 1
/* 80397D1C  90 1E 0D F4 */	stw r0, 0xdf4(r30)
lbl_80397D20:
/* 80397D20  39 61 00 30 */	addi r11, r1, 0x30
/* 80397D24  4B D0 31 E9 */	bl func_8009AF0C
/* 80397D28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80397D2C  7C 08 03 A6 */	mtlr r0
/* 80397D30  38 21 00 30 */	addi r1, r1, 0x30
/* 80397D34  4E 80 00 20 */	blr 
