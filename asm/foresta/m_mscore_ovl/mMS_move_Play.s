lbl_805E7998:
/* 805E7998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E799C  7C 08 02 A6 */	mflr r0
/* 805E79A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E79A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E79A8  4B AB 35 29 */	bl func_8009AED0
/* 805E79AC  7C 7C 1B 78 */	mr r28, r3
/* 805E79B0  7C 9D 23 78 */	mr r29, r4
/* 805E79B4  80 03 00 08 */	lwz r0, 8(r3)
/* 805E79B8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E79BC  2C 00 00 08 */	cmpwi r0, 8
/* 805E79C0  83 C3 09 B0 */	lwz r30, 0x9b0(r3)
/* 805E79C4  40 82 02 9C */	bne lbl_805E7C60
/* 805E79C8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 805E79CC  2C 03 00 00 */	cmpwi r3, 0
/* 805E79D0  40 81 00 28 */	ble lbl_805E79F8
/* 805E79D4  38 03 FF FF */	addi r0, r3, -1
/* 805E79D8  90 1E 00 18 */	stw r0, 0x18(r30)
/* 805E79DC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 805E79E0  2C 00 00 01 */	cmpwi r0, 1
/* 805E79E4  40 82 02 7C */	bne lbl_805E7C60
/* 805E79E8  7F C4 F3 78 */	mr r4, r30
/* 805E79EC  38 60 00 00 */	li r3, 0
/* 805E79F0  48 04 64 95 */	bl sAdo_Inst
/* 805E79F4  48 00 02 6C */	b lbl_805E7C60
lbl_805E79F8:
/* 805E79F8  48 04 68 21 */	bl sAdo_InstCountGet
/* 805E79FC  7C 60 07 75 */	extsb. r0, r3
/* 805E7A00  40 80 02 60 */	bge lbl_805E7C60
/* 805E7A04  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805E7A08  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805E7A0C  2C 00 FF FF */	cmpwi r0, -1
/* 805E7A10  80 63 09 28 */	lwz r3, 0x928(r3)
/* 805E7A14  40 82 00 0C */	bne lbl_805E7A20
/* 805E7A18  38 00 00 00 */	li r0, 0
/* 805E7A1C  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_805E7A20:
/* 805E7A20  83 FE 00 10 */	lwz r31, 0x10(r30)
/* 805E7A24  2C 1F 00 10 */	cmpwi r31, 0x10
/* 805E7A28  40 80 00 0C */	bge lbl_805E7A34
/* 805E7A2C  7C 9E FA 14 */	add r4, r30, r31
/* 805E7A30  48 00 00 08 */	b lbl_805E7A38
lbl_805E7A34:
/* 805E7A34  38 80 00 00 */	li r4, 0
lbl_805E7A38:
/* 805E7A38  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 805E7A3C  41 82 00 14 */	beq lbl_805E7A50
/* 805E7A40  7F C4 F3 78 */	mr r4, r30
/* 805E7A44  38 60 00 00 */	li r3, 0
/* 805E7A48  48 04 64 3D */	bl sAdo_Inst
/* 805E7A4C  48 00 01 A0 */	b lbl_805E7BEC
lbl_805E7A50:
/* 805E7A50  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 805E7A54  41 82 00 30 */	beq lbl_805E7A84
/* 805E7A58  38 00 00 03 */	li r0, 3
/* 805E7A5C  3C 60 80 65 */	lis r3, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E7A60  90 1D 00 04 */	stw r0, 4(r29)
/* 805E7A64  38 00 00 00 */	li r0, 0
/* 805E7A68  C0 03 B5 C4 */	lfs f0, data_8064B5C4@l(r3)  /* 0x8064B5C4@l */
/* 805E7A6C  38 60 00 33 */	li r3, 0x33
/* 805E7A70  B0 1E 00 1C */	sth r0, 0x1c(r30)
/* 805E7A74  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 805E7A78  B0 1E 00 1E */	sth r0, 0x1e(r30)
/* 805E7A7C  48 04 62 89 */	bl sAdo_SysTrgStart
/* 805E7A80  48 00 01 6C */	b lbl_805E7BEC
lbl_805E7A84:
/* 805E7A84  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 805E7A88  41 82 00 30 */	beq lbl_805E7AB8
/* 805E7A8C  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805E7A90  7F A3 EB 78 */	mr r3, r29
/* 805E7A94  38 80 00 04 */	li r4, 4
/* 805E7A98  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805E7A9C  7D 89 03 A6 */	mtctr r12
/* 805E7AA0  4E 80 04 21 */	bctrl 
/* 805E7AA4  38 00 00 0C */	li r0, 0xc
/* 805E7AA8  38 60 00 02 */	li r3, 2
/* 805E7AAC  98 1C 01 63 */	stb r0, 0x163(r28)
/* 805E7AB0  48 04 62 55 */	bl sAdo_SysTrgStart
/* 805E7AB4  48 00 01 38 */	b lbl_805E7BEC
lbl_805E7AB8:
/* 805E7AB8  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 805E7ABC  40 82 00 14 */	bne lbl_805E7AD0
/* 805E7AC0  2C 1F 00 10 */	cmpwi r31, 0x10
/* 805E7AC4  40 82 00 3C */	bne lbl_805E7B00
/* 805E7AC8  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 805E7ACC  41 82 00 34 */	beq lbl_805E7B00
lbl_805E7AD0:
/* 805E7AD0  7F 83 E3 78 */	mr r3, r28
/* 805E7AD4  38 80 00 0F */	li r4, 0xf
/* 805E7AD8  38 A0 00 02 */	li r5, 2
/* 805E7ADC  38 C0 00 00 */	li r6, 0
/* 805E7AE0  4B E0 7B FD */	bl mSM_open_submenu
/* 805E7AE4  38 60 00 02 */	li r3, 2
/* 805E7AE8  38 00 00 00 */	li r0, 0
/* 805E7AEC  90 7D 00 04 */	stw r3, 4(r29)
/* 805E7AF0  38 60 00 02 */	li r3, 2
/* 805E7AF4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805E7AF8  48 04 62 0D */	bl sAdo_SysTrgStart
/* 805E7AFC  48 00 00 F0 */	b lbl_805E7BEC
lbl_805E7B00:
/* 805E7B00  70 60 80 01 */	andi. r0, r3, 0x8001
/* 805E7B04  41 82 00 1C */	beq lbl_805E7B20
/* 805E7B08  2C 1F 00 10 */	cmpwi r31, 0x10
/* 805E7B0C  41 82 00 E0 */	beq lbl_805E7BEC
/* 805E7B10  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 805E7B14  38 03 00 01 */	addi r0, r3, 1
/* 805E7B18  90 1E 00 10 */	stw r0, 0x10(r30)
/* 805E7B1C  48 00 00 D0 */	b lbl_805E7BEC
lbl_805E7B20:
/* 805E7B20  70 60 40 02 */	andi. r0, r3, 0x4002
/* 805E7B24  41 82 00 1C */	beq lbl_805E7B40
/* 805E7B28  2C 1F 00 00 */	cmpwi r31, 0
/* 805E7B2C  41 82 00 C0 */	beq lbl_805E7BEC
/* 805E7B30  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 805E7B34  38 03 FF FF */	addi r0, r3, -1
/* 805E7B38  90 1E 00 10 */	stw r0, 0x10(r30)
/* 805E7B3C  48 00 00 B0 */	b lbl_805E7BEC
lbl_805E7B40:
/* 805E7B40  2C 1F 00 10 */	cmpwi r31, 0x10
/* 805E7B44  41 82 00 A8 */	beq lbl_805E7BEC
/* 805E7B48  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 805E7B4C  41 82 00 48 */	beq lbl_805E7B94
/* 805E7B50  88 64 00 00 */	lbz r3, 0(r4)
/* 805E7B54  28 03 00 0E */	cmplwi r3, 0xe
/* 805E7B58  41 82 00 94 */	beq lbl_805E7BEC
/* 805E7B5C  28 03 00 00 */	cmplwi r3, 0
/* 805E7B60  40 82 00 10 */	bne lbl_805E7B70
/* 805E7B64  38 00 00 0F */	li r0, 0xf
/* 805E7B68  98 04 00 00 */	stb r0, 0(r4)
/* 805E7B6C  48 00 00 80 */	b lbl_805E7BEC
lbl_805E7B70:
/* 805E7B70  38 03 FF FF */	addi r0, r3, -1
/* 805E7B74  3C 60 80 6D */	lis r3, single_se@ha /* 0x806CE1B0@ha */
/* 805E7B78  98 04 00 00 */	stb r0, 0(r4)
/* 805E7B7C  38 63 E1 B0 */	addi r3, r3, single_se@l /* 0x806CE1B0@l */
/* 805E7B80  88 04 00 00 */	lbz r0, 0(r4)
/* 805E7B84  54 00 08 3C */	slwi r0, r0, 1
/* 805E7B88  7C 63 02 2E */	lhzx r3, r3, r0
/* 805E7B8C  48 04 61 79 */	bl sAdo_SysTrgStart
/* 805E7B90  48 00 00 5C */	b lbl_805E7BEC
lbl_805E7B94:
/* 805E7B94  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 805E7B98  41 82 00 54 */	beq lbl_805E7BEC
/* 805E7B9C  88 64 00 00 */	lbz r3, 0(r4)
/* 805E7BA0  28 03 00 0D */	cmplwi r3, 0xd
/* 805E7BA4  41 82 00 48 */	beq lbl_805E7BEC
/* 805E7BA8  28 03 00 0F */	cmplwi r3, 0xf
/* 805E7BAC  40 82 00 10 */	bne lbl_805E7BBC
/* 805E7BB0  38 00 00 00 */	li r0, 0
/* 805E7BB4  98 04 00 00 */	stb r0, 0(r4)
/* 805E7BB8  48 00 00 0C */	b lbl_805E7BC4
lbl_805E7BBC:
/* 805E7BBC  38 03 00 01 */	addi r0, r3, 1
/* 805E7BC0  98 04 00 00 */	stb r0, 0(r4)
lbl_805E7BC4:
/* 805E7BC4  88 04 00 00 */	lbz r0, 0(r4)
/* 805E7BC8  28 00 00 0E */	cmplwi r0, 0xe
/* 805E7BCC  41 82 00 20 */	beq lbl_805E7BEC
/* 805E7BD0  28 00 00 0F */	cmplwi r0, 0xf
/* 805E7BD4  41 82 00 18 */	beq lbl_805E7BEC
/* 805E7BD8  3C 60 80 6D */	lis r3, single_se@ha /* 0x806CE1B0@ha */
/* 805E7BDC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 805E7BE0  38 63 E1 B0 */	addi r3, r3, single_se@l /* 0x806CE1B0@l */
/* 805E7BE4  7C 63 02 2E */	lhzx r3, r3, r0
/* 805E7BE8  48 04 61 1D */	bl sAdo_SysTrgStart
lbl_805E7BEC:
/* 805E7BEC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805E7BF0  7C 1F 00 00 */	cmpw r31, r0
/* 805E7BF4  41 82 00 50 */	beq lbl_805E7C44
/* 805E7BF8  38 00 00 00 */	li r0, 0
/* 805E7BFC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805E7C00  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805E7C04  2C 00 00 10 */	cmpwi r0, 0x10
/* 805E7C08  41 82 00 30 */	beq lbl_805E7C38
/* 805E7C0C  7C 1E 00 AE */	lbzx r0, r30, r0
/* 805E7C10  28 00 00 0E */	cmplwi r0, 0xe
/* 805E7C14  41 82 00 4C */	beq lbl_805E7C60
/* 805E7C18  28 00 00 0F */	cmplwi r0, 0xf
/* 805E7C1C  41 82 00 44 */	beq lbl_805E7C60
/* 805E7C20  3C 60 80 6D */	lis r3, single_se@ha /* 0x806CE1B0@ha */
/* 805E7C24  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 805E7C28  38 63 E1 B0 */	addi r3, r3, single_se@l /* 0x806CE1B0@l */
/* 805E7C2C  7C 63 02 2E */	lhzx r3, r3, r0
/* 805E7C30  48 04 60 D5 */	bl sAdo_SysTrgStart
/* 805E7C34  48 00 00 2C */	b lbl_805E7C60
lbl_805E7C38:
/* 805E7C38  38 60 00 01 */	li r3, 1
/* 805E7C3C  48 04 60 C9 */	bl sAdo_SysTrgStart
/* 805E7C40  48 00 00 20 */	b lbl_805E7C60
lbl_805E7C44:
/* 805E7C44  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 805E7C48  38 60 00 12 */	li r3, 0x12
/* 805E7C4C  38 84 00 01 */	addi r4, r4, 1
/* 805E7C50  7C 04 1B D6 */	divw r0, r4, r3
/* 805E7C54  7C 00 19 D6 */	mullw r0, r0, r3
/* 805E7C58  7C 00 20 50 */	subf r0, r0, r4
/* 805E7C5C  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_805E7C60:
/* 805E7C60  39 61 00 20 */	addi r11, r1, 0x20
/* 805E7C64  4B AB 32 B9 */	bl func_8009AF1C
/* 805E7C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E7C6C  7C 08 03 A6 */	mtlr r0
/* 805E7C70  38 21 00 20 */	addi r1, r1, 0x20
/* 805E7C74  4E 80 00 20 */	blr 
