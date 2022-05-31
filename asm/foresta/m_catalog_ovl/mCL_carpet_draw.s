lbl_805CABD8:
/* 805CABD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CABDC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060034@ha */
/* 805CABE0  38 C4 00 34 */	addi r6, r4, 0x0034 /* 0xDB060034@l */
/* 805CABE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CABE8  38 04 00 20 */	addi r0, r4, 0x20
/* 805CABEC  39 64 00 24 */	addi r11, r4, 0x24
/* 805CABF0  39 24 00 28 */	addi r9, r4, 0x28
/* 805CABF4  93 C1 00 08 */	stw r30, 8(r1)
/* 805CABF8  38 E4 00 2C */	addi r7, r4, 0x2c
/* 805CABFC  3C 80 DE 00 */	lis r4, 0xde00
/* 805CAC00  83 E3 08 5C */	lwz r31, 0x85c(r3)
/* 805CAC04  3C 60 80 A3 */	lis r3, mCL_rom_myhome1_floor_model@ha /* 0x80A32040@ha */
/* 805CAC08  83 C5 02 D0 */	lwz r30, 0x2d0(r5)
/* 805CAC0C  39 9F 00 20 */	addi r12, r31, 0x20
/* 805CAC10  39 5F 08 20 */	addi r10, r31, 0x820
/* 805CAC14  90 DE 00 00 */	stw r6, 0(r30)
/* 805CAC18  39 1F 10 20 */	addi r8, r31, 0x1020
/* 805CAC1C  38 DF 18 20 */	addi r6, r31, 0x1820
/* 805CAC20  93 FE 00 04 */	stw r31, 4(r30)
/* 805CAC24  90 1E 00 08 */	stw r0, 8(r30)
/* 805CAC28  38 03 20 40 */	addi r0, r3, mCL_rom_myhome1_floor_model@l /* 0x80A32040@l */
/* 805CAC2C  91 9E 00 0C */	stw r12, 0xc(r30)
/* 805CAC30  91 7E 00 10 */	stw r11, 0x10(r30)
/* 805CAC34  91 5E 00 14 */	stw r10, 0x14(r30)
/* 805CAC38  91 3E 00 18 */	stw r9, 0x18(r30)
/* 805CAC3C  91 1E 00 1C */	stw r8, 0x1c(r30)
/* 805CAC40  90 FE 00 20 */	stw r7, 0x20(r30)
/* 805CAC44  90 DE 00 24 */	stw r6, 0x24(r30)
/* 805CAC48  3B DE 00 28 */	addi r30, r30, 0x28
/* 805CAC4C  7F C3 F3 78 */	mr r3, r30
/* 805CAC50  90 9E 00 00 */	stw r4, 0(r30)
/* 805CAC54  3B DE 00 08 */	addi r30, r30, 8
/* 805CAC58  90 03 00 04 */	stw r0, 4(r3)
/* 805CAC5C  93 C5 02 D0 */	stw r30, 0x2d0(r5)
/* 805CAC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CAC64  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CAC68  38 21 00 10 */	addi r1, r1, 0x10
/* 805CAC6C  4E 80 00 20 */	blr 
