lbl_803ABAB8:
/* 803ABAB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803ABABC  7C 08 02 A6 */	mflr r0
/* 803ABAC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803ABAC4  39 61 00 30 */	addi r11, r1, 0x30
/* 803ABAC8  4B CE F4 09 */	bl func_8009AED0
/* 803ABACC  7C 7C 1B 78 */	mr r28, r3
/* 803ABAD0  7C 9D 23 78 */	mr r29, r4
/* 803ABAD4  7C BE 2B 78 */	mr r30, r5
/* 803ABAD8  7C DF 33 78 */	mr r31, r6
/* 803ABADC  4B CB 12 19 */	bl fqrand
/* 803ABAE0  7F C4 F3 78 */	mr r4, r30
/* 803ABAE4  38 61 00 0C */	addi r3, r1, 0xc
/* 803ABAE8  48 05 B7 4D */	bl lbRTC_TimeCopy
/* 803ABAEC  38 80 00 11 */	li r4, 0x11
/* 803ABAF0  38 60 00 32 */	li r3, 0x32
/* 803ABAF4  38 00 00 00 */	li r0, 0
/* 803ABAF8  98 81 00 0E */	stb r4, 0xe(r1)
/* 803ABAFC  98 61 00 0D */	stb r3, 0xd(r1)
/* 803ABB00  98 01 00 0C */	stb r0, 0xc(r1)
/* 803ABB04  90 1D 00 00 */	stw r0, 0(r29)
/* 803ABB08  48 00 00 28 */	b lbl_803ABB30
lbl_803ABB0C:
/* 803ABB0C  88 7E 00 02 */	lbz r3, 2(r30)
/* 803ABB10  4B FF FF 29 */	bl mFR_make_NpcRecord
/* 803ABB14  80 1D 00 00 */	lwz r0, 0(r29)
/* 803ABB18  7C 03 00 00 */	cmpw r3, r0
/* 803ABB1C  40 81 00 08 */	ble lbl_803ABB24
/* 803ABB20  90 7D 00 00 */	stw r3, 0(r29)
lbl_803ABB24:
/* 803ABB24  7F C3 F3 78 */	mr r3, r30
/* 803ABB28  38 80 00 1E */	li r4, 0x1e
/* 803ABB2C  48 05 B2 C1 */	bl lbRTC_Add_mm
lbl_803ABB30:
/* 803ABB30  7F C4 F3 78 */	mr r4, r30
/* 803ABB34  38 61 00 0C */	addi r3, r1, 0xc
/* 803ABB38  48 05 AD DD */	bl lbRTC_IsOverTime
/* 803ABB3C  2C 03 FF FF */	cmpwi r3, -1
/* 803ABB40  41 82 FF CC */	beq lbl_803ABB0C
/* 803ABB44  38 60 00 12 */	li r3, 0x12
/* 803ABB48  38 00 00 00 */	li r0, 0
/* 803ABB4C  98 7E 00 02 */	stb r3, 2(r30)
/* 803ABB50  98 1E 00 01 */	stb r0, 1(r30)
/* 803ABB54  98 1E 00 00 */	stb r0, 0(r30)
/* 803ABB58  80 1D 00 00 */	lwz r0, 0(r29)
/* 803ABB5C  7C 00 F8 00 */	cmpw r0, r31
/* 803ABB60  41 81 00 0C */	bgt lbl_803ABB6C
/* 803ABB64  38 60 00 00 */	li r3, 0
/* 803ABB68  48 00 00 64 */	b lbl_803ABBCC
lbl_803ABB6C:
/* 803ABB6C  7F 83 E3 78 */	mr r3, r28
/* 803ABB70  48 03 45 1D */	bl mPr_ClearPersonalID
/* 803ABB74  38 61 00 08 */	addi r3, r1, 8
/* 803ABB78  4B FF 45 35 */	bl mEvMN_GetJointEventRandomNpc
/* 803ABB7C  2C 03 00 01 */	cmpwi r3, 1
/* 803ABB80  40 82 00 14 */	bne lbl_803ABB94
/* 803ABB84  A0 81 00 08 */	lhz r4, 8(r1)
/* 803ABB88  38 61 00 14 */	addi r3, r1, 0x14
/* 803ABB8C  48 02 5C 81 */	bl mNpc_GetNpcWorldNameTableNo
/* 803ABB90  48 00 00 0C */	b lbl_803ABB9C
lbl_803ABB94:
/* 803ABB94  38 61 00 14 */	addi r3, r1, 0x14
/* 803ABB98  48 02 61 2D */	bl mNpc_GetRandomAnimalName
lbl_803ABB9C:
/* 803ABB9C  7F 83 E3 78 */	mr r3, r28
/* 803ABBA0  38 81 00 14 */	addi r4, r1, 0x14
/* 803ABBA4  38 A0 00 08 */	li r5, 8
/* 803ABBA8  48 00 EE 7D */	bl func_803BAA24
/* 803ABBAC  38 7C 00 08 */	addi r3, r28, 8
/* 803ABBB0  48 00 7D 19 */	bl mLd_ClearLandName
/* 803ABBB4  3C 80 80 65 */	lis r4, l_name@ha /* 0x80654080@ha */
/* 803ABBB8  38 7C 00 08 */	addi r3, r28, 8
/* 803ABBBC  38 84 40 80 */	addi r4, r4, l_name@l /* 0x80654080@l */
/* 803ABBC0  38 A0 00 05 */	li r5, 5
/* 803ABBC4  48 00 EE 61 */	bl func_803BAA24
/* 803ABBC8  38 60 00 01 */	li r3, 1
lbl_803ABBCC:
/* 803ABBCC  39 61 00 30 */	addi r11, r1, 0x30
/* 803ABBD0  4B CE F3 4D */	bl func_8009AF1C
/* 803ABBD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803ABBD8  7C 08 03 A6 */	mtlr r0
/* 803ABBDC  38 21 00 30 */	addi r1, r1, 0x30
/* 803ABBE0  4E 80 00 20 */	blr 
