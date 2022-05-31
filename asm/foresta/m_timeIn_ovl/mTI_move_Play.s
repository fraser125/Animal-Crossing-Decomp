lbl_805FF5BC:
/* 805FF5BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805FF5C0  7C 08 02 A6 */	mflr r0
/* 805FF5C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805FF5C8  39 61 00 30 */	addi r11, r1, 0x30
/* 805FF5CC  4B A9 B9 05 */	bl func_8009AED0
/* 805FF5D0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805FF5D4  83 A5 09 A0 */	lwz r29, 0x9a0(r5)
/* 805FF5D8  83 85 09 28 */	lwz r28, 0x928(r5)
/* 805FF5DC  A0 1D 00 12 */	lhz r0, 0x12(r29)
/* 805FF5E0  28 00 00 01 */	cmplwi r0, 1
/* 805FF5E4  40 82 00 0C */	bne lbl_805FF5F0
/* 805FF5E8  4B FF FD C9 */	bl mTI_set_time
/* 805FF5EC  48 00 02 68 */	b lbl_805FF854
lbl_805FF5F0:
/* 805FF5F0  57 80 04 E7 */	rlwinm. r0, r28, 0, 0x13, 0x13
/* 805FF5F4  41 82 00 0C */	beq lbl_805FF600
/* 805FF5F8  4B FF FE 75 */	bl mTI_window_close
/* 805FF5FC  48 00 02 58 */	b lbl_805FF854
lbl_805FF600:
/* 805FF600  73 80 40 02 */	andi. r0, r28, 0x4002
/* 805FF604  41 82 00 28 */	beq lbl_805FF62C
/* 805FF608  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 805FF60C  2C 00 00 00 */	cmpwi r0, 0
/* 805FF610  40 81 02 44 */	ble lbl_805FF854
/* 805FF614  38 60 10 03 */	li r3, 0x1003
/* 805FF618  48 02 E6 ED */	bl sAdo_SysTrgStart
/* 805FF61C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 805FF620  38 03 FF FF */	addi r0, r3, -1
/* 805FF624  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805FF628  48 00 02 2C */	b lbl_805FF854
lbl_805FF62C:
/* 805FF62C  73 80 80 01 */	andi. r0, r28, 0x8001
/* 805FF630  41 82 00 6C */	beq lbl_805FF69C
/* 805FF634  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 805FF638  2C 05 00 05 */	cmpwi r5, 5
/* 805FF63C  40 82 00 14 */	bne lbl_805FF650
/* 805FF640  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 805FF644  40 82 02 10 */	bne lbl_805FF854
/* 805FF648  4B FF FE 25 */	bl mTI_window_close
/* 805FF64C  48 00 02 08 */	b lbl_805FF854
lbl_805FF650:
/* 805FF650  38 05 00 01 */	addi r0, r5, 1
/* 805FF654  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805FF658  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 805FF65C  2C 00 00 05 */	cmpwi r0, 5
/* 805FF660  40 82 00 30 */	bne lbl_805FF690
/* 805FF664  4B FF FD 15 */	bl mTI_get_now_min
/* 805FF668  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 805FF66C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 805FF670  7C 00 18 40 */	cmplw r0, r3
/* 805FF674  41 82 00 1C */	beq lbl_805FF690
/* 805FF678  38 00 00 01 */	li r0, 1
/* 805FF67C  38 60 00 0A */	li r3, 0xa
/* 805FF680  B0 1D 00 12 */	sth r0, 0x12(r29)
/* 805FF684  48 02 E8 81 */	bl sAdo_SysLevStart
/* 805FF688  38 00 00 00 */	li r0, 0
/* 805FF68C  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_805FF690:
/* 805FF690  38 60 00 0D */	li r3, 0xd
/* 805FF694  48 02 E6 71 */	bl sAdo_SysTrgStart
/* 805FF698  48 00 01 BC */	b lbl_805FF854
lbl_805FF69C:
/* 805FF69C  57 80 07 3B */	rlwinm. r0, r28, 0, 0x1c, 0x1d
/* 805FF6A0  41 82 01 B4 */	beq lbl_805FF854
/* 805FF6A4  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 805FF6A8  2C 1F 00 05 */	cmpwi r31, 5
/* 805FF6AC  41 82 01 A8 */	beq lbl_805FF854
/* 805FF6B0  7F A4 EB 78 */	mr r4, r29
/* 805FF6B4  38 61 00 10 */	addi r3, r1, 0x10
/* 805FF6B8  4B FF FC A1 */	bl mTI_copy_time
/* 805FF6BC  57 9E 07 39 */	rlwinm. r30, r28, 0, 0x1c, 0x1c
/* 805FF6C0  41 82 00 38 */	beq lbl_805FF6F8
/* 805FF6C4  57 E5 08 3C */	slwi r5, r31, 1
/* 805FF6C8  38 81 00 10 */	addi r4, r1, 0x10
/* 805FF6CC  7C 64 2A 2E */	lhzx r3, r4, r5
/* 805FF6D0  2C 1F 00 04 */	cmpwi r31, 4
/* 805FF6D4  38 03 00 01 */	addi r0, r3, 1
/* 805FF6D8  7C 04 2B 2E */	sthx r0, r4, r5
/* 805FF6DC  40 82 00 84 */	bne lbl_805FF760
/* 805FF6E0  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 805FF6E4  28 00 00 1E */	cmplwi r0, 0x1e
/* 805FF6E8  40 81 00 78 */	ble lbl_805FF760
/* 805FF6EC  38 00 00 01 */	li r0, 1
/* 805FF6F0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 805FF6F4  48 00 00 6C */	b lbl_805FF760
lbl_805FF6F8:
/* 805FF6F8  57 80 07 7B */	rlwinm. r0, r28, 0, 0x1d, 0x1d
/* 805FF6FC  41 82 00 64 */	beq lbl_805FF760
/* 805FF700  57 E4 08 3C */	slwi r4, r31, 1
/* 805FF704  38 A1 00 10 */	addi r5, r1, 0x10
/* 805FF708  7C 65 22 2E */	lhzx r3, r5, r4
/* 805FF70C  28 03 00 00 */	cmplwi r3, 0
/* 805FF710  41 82 00 2C */	beq lbl_805FF73C
/* 805FF714  38 03 FF FF */	addi r0, r3, -1
/* 805FF718  2C 1F 00 04 */	cmpwi r31, 4
/* 805FF71C  7C 05 23 2E */	sthx r0, r5, r4
/* 805FF720  40 82 00 40 */	bne lbl_805FF760
/* 805FF724  7C 05 22 2E */	lhzx r0, r5, r4
/* 805FF728  28 00 00 01 */	cmplwi r0, 1
/* 805FF72C  40 80 00 34 */	bge lbl_805FF760
/* 805FF730  38 00 00 1E */	li r0, 0x1e
/* 805FF734  B0 01 00 18 */	sth r0, 0x18(r1)
/* 805FF738  48 00 00 28 */	b lbl_805FF760
lbl_805FF73C:
/* 805FF73C  2C 1F 00 00 */	cmpwi r31, 0
/* 805FF740  40 82 00 10 */	bne lbl_805FF750
/* 805FF744  38 00 00 17 */	li r0, 0x17
/* 805FF748  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805FF74C  48 00 00 14 */	b lbl_805FF760
lbl_805FF750:
/* 805FF750  2C 1F 00 01 */	cmpwi r31, 1
/* 805FF754  40 82 00 0C */	bne lbl_805FF760
/* 805FF758  38 00 00 3B */	li r0, 0x3b
/* 805FF75C  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_805FF760:
/* 805FF760  38 61 00 08 */	addi r3, r1, 8
/* 805FF764  38 81 00 10 */	addi r4, r1, 0x10
/* 805FF768  4B FF FB 75 */	bl func_805FF2DC
/* 805FF76C  38 61 00 08 */	addi r3, r1, 8
/* 805FF770  4B E0 7A D9 */	bl lbRTC_IsValidTime
/* 805FF774  2C 03 00 00 */	cmpwi r3, 0
/* 805FF778  40 82 00 C8 */	bne lbl_805FF840
/* 805FF77C  2C 1F 00 04 */	cmpwi r31, 4
/* 805FF780  40 82 00 10 */	bne lbl_805FF790
/* 805FF784  38 00 00 1C */	li r0, 0x1c
/* 805FF788  B0 01 00 16 */	sth r0, 0x16(r1)
/* 805FF78C  48 00 00 B4 */	b lbl_805FF840
lbl_805FF790:
/* 805FF790  2C 1F 00 02 */	cmpwi r31, 2
/* 805FF794  40 82 00 18 */	bne lbl_805FF7AC
/* 805FF798  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 805FF79C  28 00 00 00 */	cmplwi r0, 0
/* 805FF7A0  41 82 00 0C */	beq lbl_805FF7AC
/* 805FF7A4  28 00 00 0D */	cmplwi r0, 0xd
/* 805FF7A8  41 80 00 14 */	blt lbl_805FF7BC
lbl_805FF7AC:
/* 805FF7AC  57 80 07 7B */	rlwinm. r0, r28, 0, 0x1d, 0x1d
/* 805FF7B0  41 82 00 40 */	beq lbl_805FF7F0
/* 805FF7B4  2C 1F 00 03 */	cmpwi r31, 3
/* 805FF7B8  40 82 00 38 */	bne lbl_805FF7F0
lbl_805FF7BC:
/* 805FF7BC  38 00 00 1F */	li r0, 0x1f
/* 805FF7C0  98 01 00 0B */	stb r0, 0xb(r1)
/* 805FF7C4  48 00 00 10 */	b lbl_805FF7D4
lbl_805FF7C8:
/* 805FF7C8  88 61 00 0B */	lbz r3, 0xb(r1)
/* 805FF7CC  38 03 FF FF */	addi r0, r3, -1
/* 805FF7D0  98 01 00 0B */	stb r0, 0xb(r1)
lbl_805FF7D4:
/* 805FF7D4  38 61 00 08 */	addi r3, r1, 8
/* 805FF7D8  4B E0 7A 71 */	bl lbRTC_IsValidTime
/* 805FF7DC  2C 03 00 00 */	cmpwi r3, 0
/* 805FF7E0  41 82 FF E8 */	beq lbl_805FF7C8
/* 805FF7E4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 805FF7E8  B0 01 00 16 */	sth r0, 0x16(r1)
/* 805FF7EC  48 00 00 54 */	b lbl_805FF840
lbl_805FF7F0:
/* 805FF7F0  28 1E 00 00 */	cmplwi r30, 0
/* 805FF7F4  41 82 00 3C */	beq lbl_805FF830
/* 805FF7F8  2C 1F 00 02 */	cmpwi r31, 2
/* 805FF7FC  41 82 00 0C */	beq lbl_805FF808
/* 805FF800  2C 1F 00 03 */	cmpwi r31, 3
/* 805FF804  40 82 00 18 */	bne lbl_805FF81C
lbl_805FF808:
/* 805FF808  57 E0 08 3C */	slwi r0, r31, 1
/* 805FF80C  38 61 00 10 */	addi r3, r1, 0x10
/* 805FF810  38 80 00 01 */	li r4, 1
/* 805FF814  7C 83 03 2E */	sthx r4, r3, r0
/* 805FF818  48 00 00 28 */	b lbl_805FF840
lbl_805FF81C:
/* 805FF81C  57 E0 08 3C */	slwi r0, r31, 1
/* 805FF820  38 61 00 10 */	addi r3, r1, 0x10
/* 805FF824  38 80 00 00 */	li r4, 0
/* 805FF828  7C 83 03 2E */	sthx r4, r3, r0
/* 805FF82C  48 00 00 14 */	b lbl_805FF840
lbl_805FF830:
/* 805FF830  2C 1F 00 02 */	cmpwi r31, 2
/* 805FF834  40 82 00 0C */	bne lbl_805FF840
/* 805FF838  38 00 00 0C */	li r0, 0xc
/* 805FF83C  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_805FF840:
/* 805FF840  7F A3 EB 78 */	mr r3, r29
/* 805FF844  38 81 00 10 */	addi r4, r1, 0x10
/* 805FF848  4B FF FB 11 */	bl mTI_copy_time
/* 805FF84C  38 60 00 01 */	li r3, 1
/* 805FF850  48 02 E4 B5 */	bl sAdo_SysTrgStart
lbl_805FF854:
/* 805FF854  39 61 00 30 */	addi r11, r1, 0x30
/* 805FF858  4B A9 B6 C5 */	bl func_8009AF1C
/* 805FF85C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805FF860  7C 08 03 A6 */	mtlr r0
/* 805FF864  38 21 00 30 */	addi r1, r1, 0x30
/* 805FF868  4E 80 00 20 */	blr 
