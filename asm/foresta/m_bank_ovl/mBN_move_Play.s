lbl_805C3B28:
/* 805C3B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C3B2C  7C 08 02 A6 */	mflr r0
/* 805C3B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C3B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C3B38  93 C1 00 08 */	stw r30, 8(r1)
/* 805C3B3C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C3B40  83 C5 09 28 */	lwz r30, 0x928(r5)
/* 805C3B44  83 E5 09 D4 */	lwz r31, 0x9d4(r5)
/* 805C3B48  57 C0 04 63 */	rlwinm. r0, r30, 0, 0x11, 0x11
/* 805C3B4C  41 82 00 24 */	beq lbl_805C3B70
/* 805C3B50  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805C3B54  7C 83 23 78 */	mr r3, r4
/* 805C3B58  38 80 00 04 */	li r4, 4
/* 805C3B5C  7D 89 03 A6 */	mtctr r12
/* 805C3B60  4E 80 04 21 */	bctrl 
/* 805C3B64  38 60 00 02 */	li r3, 2
/* 805C3B68  48 06 A1 9D */	bl sAdo_SysTrgStart
/* 805C3B6C  48 00 01 B0 */	b lbl_805C3D1C
lbl_805C3B70:
/* 805C3B70  57 C0 04 E7 */	rlwinm. r0, r30, 0, 0x13, 0x13
/* 805C3B74  41 82 00 10 */	beq lbl_805C3B84
/* 805C3B78  7F E5 FB 78 */	mr r5, r31
/* 805C3B7C  4B FF FD 51 */	bl mBN_bank_ok
/* 805C3B80  48 00 01 9C */	b lbl_805C3D1C
lbl_805C3B84:
/* 805C3B84  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 805C3B88  2C 05 00 06 */	cmpwi r5, 6
/* 805C3B8C  40 82 00 34 */	bne lbl_805C3BC0
/* 805C3B90  57 C0 04 21 */	rlwinm. r0, r30, 0, 0x10, 0x10
/* 805C3B94  41 82 00 10 */	beq lbl_805C3BA4
/* 805C3B98  7F E5 FB 78 */	mr r5, r31
/* 805C3B9C  4B FF FD 31 */	bl mBN_bank_ok
/* 805C3BA0  48 00 01 7C */	b lbl_805C3D1C
lbl_805C3BA4:
/* 805C3BA4  73 C0 00 0A */	andi. r0, r30, 0xa
/* 805C3BA8  41 82 01 74 */	beq lbl_805C3D1C
/* 805C3BAC  38 05 FF FF */	addi r0, r5, -1
/* 805C3BB0  38 60 00 01 */	li r3, 1
/* 805C3BB4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805C3BB8  48 06 A1 4D */	bl sAdo_SysTrgStart
/* 805C3BBC  48 00 01 60 */	b lbl_805C3D1C
lbl_805C3BC0:
/* 805C3BC0  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 805C3BC4  41 82 00 20 */	beq lbl_805C3BE4
/* 805C3BC8  2C 05 00 00 */	cmpwi r5, 0
/* 805C3BCC  40 81 00 18 */	ble lbl_805C3BE4
/* 805C3BD0  38 05 FF FF */	addi r0, r5, -1
/* 805C3BD4  38 60 00 01 */	li r3, 1
/* 805C3BD8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805C3BDC  48 06 A1 29 */	bl sAdo_SysTrgStart
/* 805C3BE0  48 00 01 3C */	b lbl_805C3D1C
lbl_805C3BE4:
/* 805C3BE4  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 805C3BE8  41 82 00 1C */	beq lbl_805C3C04
/* 805C3BEC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 805C3BF0  38 60 00 01 */	li r3, 1
/* 805C3BF4  38 04 00 01 */	addi r0, r4, 1
/* 805C3BF8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805C3BFC  48 06 A1 09 */	bl sAdo_SysTrgStart
/* 805C3C00  48 00 01 1C */	b lbl_805C3D1C
lbl_805C3C04:
/* 805C3C04  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 805C3C08  40 82 00 0C */	bne lbl_805C3C14
/* 805C3C0C  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 805C3C10  41 82 01 0C */	beq lbl_805C3D1C
lbl_805C3C14:
/* 805C3C14  7C A3 2B 78 */	mr r3, r5
/* 805C3C18  4B FF FC 05 */	bl mBN_cursol_2_keta
/* 805C3C1C  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 805C3C20  41 82 00 7C */	beq lbl_805C3C9C
/* 805C3C24  80 BF 00 08 */	lwz r5, 8(r31)
/* 805C3C28  7C 05 18 00 */	cmpw r5, r3
/* 805C3C2C  40 80 00 08 */	bge lbl_805C3C34
/* 805C3C30  7C A3 2B 78 */	mr r3, r5
lbl_805C3C34:
/* 805C3C34  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 805C3C38  3C 80 3B 9B */	lis r4, 0x3B9B /* 0x3B9AC9FF@ha */
/* 805C3C3C  38 04 C9 FF */	addi r0, r4, 0xC9FF /* 0x3B9AC9FF@l */
/* 805C3C40  7C 83 32 14 */	add r4, r3, r6
/* 805C3C44  7C 04 00 00 */	cmpw r4, r0
/* 805C3C48  40 81 00 08 */	ble lbl_805C3C50
/* 805C3C4C  7C 66 00 50 */	subf r3, r6, r0
lbl_805C3C50:
/* 805C3C50  2C 03 00 00 */	cmpwi r3, 0
/* 805C3C54  40 82 00 10 */	bne lbl_805C3C64
/* 805C3C58  38 60 10 03 */	li r3, 0x1003
/* 805C3C5C  48 06 A0 A9 */	bl sAdo_SysTrgStart
/* 805C3C60  48 00 00 BC */	b lbl_805C3D1C
lbl_805C3C64:
/* 805C3C64  80 9F 00 04 */	lwz r4, 4(r31)
/* 805C3C68  7C 05 20 00 */	cmpw r5, r4
/* 805C3C6C  40 81 00 14 */	ble lbl_805C3C80
/* 805C3C70  7C 03 28 50 */	subf r0, r3, r5
/* 805C3C74  7C 00 20 00 */	cmpw r0, r4
/* 805C3C78  40 80 00 08 */	bge lbl_805C3C80
/* 805C3C7C  7C 64 28 50 */	subf r3, r4, r5
lbl_805C3C80:
/* 805C3C80  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 805C3C84  7C 00 1A 14 */	add r0, r0, r3
/* 805C3C88  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805C3C8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 805C3C90  7C 03 00 50 */	subf r0, r3, r0
/* 805C3C94  90 1F 00 08 */	stw r0, 8(r31)
/* 805C3C98  48 00 00 74 */	b lbl_805C3D0C
lbl_805C3C9C:
/* 805C3C9C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 805C3CA0  7C 00 18 00 */	cmpw r0, r3
/* 805C3CA4  40 80 00 08 */	bge lbl_805C3CAC
/* 805C3CA8  7C 03 03 78 */	mr r3, r0
lbl_805C3CAC:
/* 805C3CAC  80 9F 00 08 */	lwz r4, 8(r31)
/* 805C3CB0  80 BF 00 00 */	lwz r5, 0(r31)
/* 805C3CB4  7C 04 1A 14 */	add r0, r4, r3
/* 805C3CB8  7C 00 28 00 */	cmpw r0, r5
/* 805C3CBC  40 81 00 08 */	ble lbl_805C3CC4
/* 805C3CC0  7C 64 28 50 */	subf r3, r4, r5
lbl_805C3CC4:
/* 805C3CC4  2C 03 00 00 */	cmpwi r3, 0
/* 805C3CC8  40 82 00 10 */	bne lbl_805C3CD8
/* 805C3CCC  38 60 10 03 */	li r3, 0x1003
/* 805C3CD0  48 06 A0 35 */	bl sAdo_SysTrgStart
/* 805C3CD4  48 00 00 48 */	b lbl_805C3D1C
lbl_805C3CD8:
/* 805C3CD8  80 BF 00 04 */	lwz r5, 4(r31)
/* 805C3CDC  7C 04 28 00 */	cmpw r4, r5
/* 805C3CE0  40 80 00 14 */	bge lbl_805C3CF4
/* 805C3CE4  7C 04 1A 14 */	add r0, r4, r3
/* 805C3CE8  7C 00 28 00 */	cmpw r0, r5
/* 805C3CEC  40 81 00 08 */	ble lbl_805C3CF4
/* 805C3CF0  7C 64 28 50 */	subf r3, r4, r5
lbl_805C3CF4:
/* 805C3CF4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 805C3CF8  7C 03 00 50 */	subf r0, r3, r0
/* 805C3CFC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805C3D00  80 1F 00 08 */	lwz r0, 8(r31)
/* 805C3D04  7C 00 1A 14 */	add r0, r0, r3
/* 805C3D08  90 1F 00 08 */	stw r0, 8(r31)
lbl_805C3D0C:
/* 805C3D0C  7F E3 FB 78 */	mr r3, r31
/* 805C3D10  4B FF FA ED */	bl func_805C37FC
/* 805C3D14  38 60 04 26 */	li r3, 0x426
/* 805C3D18  48 06 9F ED */	bl sAdo_SysTrgStart
lbl_805C3D1C:
/* 805C3D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C3D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C3D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C3D28  7C 08 03 A6 */	mtlr r0
/* 805C3D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C3D30  4E 80 00 20 */	blr 
