lbl_803AAB78:
/* 803AAB78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AAB7C  7C 08 02 A6 */	mflr r0
/* 803AAB80  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AAB84  39 61 00 30 */	addi r11, r1, 0x30
/* 803AAB88  4B CF 03 4D */	bl func_8009AED4
/* 803AAB8C  38 00 00 00 */	li r0, 0
/* 803AAB90  3C A0 81 16 */	lis r5, data_81167BC0@ha /* 0x81167BC0@ha */
/* 803AAB94  90 01 00 0C */	stw r0, 0xc(r1)
/* 803AAB98  3B E5 7B C0 */	addi r31, r5, data_81167BC0@l /* 0x81167BC0@l */
/* 803AAB9C  7C 7D 1B 78 */	mr r29, r3
/* 803AABA0  7C 9E 23 78 */	mr r30, r4
/* 803AABA4  90 01 00 08 */	stw r0, 8(r1)
/* 803AABA8  38 7F 01 20 */	addi r3, r31, 0x120
/* 803AABAC  38 80 00 07 */	li r4, 7
/* 803AABB0  4B CB 24 B9 */	bl bzero
/* 803AABB4  38 7F 01 28 */	addi r3, r31, 0x128
/* 803AABB8  38 80 00 07 */	li r4, 7
/* 803AABBC  4B CB 24 AD */	bl bzero
/* 803AABC0  38 7F 01 30 */	addi r3, r31, 0x130
/* 803AABC4  38 80 00 07 */	li r4, 7
/* 803AABC8  4B CB 24 A1 */	bl bzero
/* 803AABCC  80 DE 00 00 */	lwz r6, 0(r30)
/* 803AABD0  38 7F 01 20 */	addi r3, r31, 0x120
/* 803AABD4  81 1E 00 04 */	lwz r8, 4(r30)
/* 803AABD8  38 9F 01 30 */	addi r4, r31, 0x130
/* 803AABDC  80 1E 00 08 */	lwz r0, 8(r30)
/* 803AABE0  38 A1 00 08 */	addi r5, r1, 8
/* 803AABE4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 803AABE8  38 C1 00 0C */	addi r6, r1, 0xc
/* 803AABEC  38 E1 00 10 */	addi r7, r1, 0x10
/* 803AABF0  91 01 00 14 */	stw r8, 0x14(r1)
/* 803AABF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 803AABF8  4B FF F9 C1 */	bl mFI_ResearchShell
/* 803AABFC  80 01 00 08 */	lwz r0, 8(r1)
/* 803AAC00  7C 1D 00 00 */	cmpw r29, r0
/* 803AAC04  40 81 00 08 */	ble lbl_803AAC0C
/* 803AAC08  7C 1D 03 78 */	mr r29, r0
lbl_803AAC0C:
/* 803AAC0C  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 803AAC10  2C 07 00 00 */	cmpwi r7, 0
/* 803AAC14  40 81 00 2C */	ble lbl_803AAC40
/* 803AAC18  2C 1D 00 00 */	cmpwi r29, 0
/* 803AAC1C  40 81 00 24 */	ble lbl_803AAC40
/* 803AAC20  7F A6 EB 78 */	mr r6, r29
/* 803AAC24  38 7F 01 20 */	addi r3, r31, 0x120
/* 803AAC28  38 9F 01 28 */	addi r4, r31, 0x128
/* 803AAC2C  38 BF 01 30 */	addi r5, r31, 0x130
/* 803AAC30  4B FF FC 69 */	bl mFI_DivideShell
/* 803AAC34  38 7F 01 20 */	addi r3, r31, 0x120
/* 803AAC38  38 9F 01 28 */	addi r4, r31, 0x128
/* 803AAC3C  4B FF FE 89 */	bl mFI_SetShellSandyBeachBlock
lbl_803AAC40:
/* 803AAC40  39 61 00 30 */	addi r11, r1, 0x30
/* 803AAC44  4B CF 02 DD */	bl func_8009AF20
/* 803AAC48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AAC4C  7C 08 03 A6 */	mtlr r0
/* 803AAC50  38 21 00 30 */	addi r1, r1, 0x30
/* 803AAC54  4E 80 00 20 */	blr 
