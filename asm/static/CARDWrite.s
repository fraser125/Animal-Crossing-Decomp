.include "macros.inc"

.section .text

.org 0x80091E88

.global WriteCallback
WriteCallback:
/* 80091E88 0008EDE8  7C 08 02 A6 */	mflr r0
/* 80091E8C 0008EDEC  90 01 00 04 */	stw r0, 4(r1)
/* 80091E90 0008EDF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80091E94 0008EDF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80091E98 0008EDF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80091E9C 0008EDFC  3B C3 00 00 */	addi r30, r3, 0
/* 80091EA0 0008EE00  3C 60 80 21 */	lis r3, __CARDBlock@ha
/* 80091EA4 0008EE04  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80091EA8 0008EE08  1C BE 01 10 */	mulli r5, r30, 0x110
/* 80091EAC 0008EE0C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80091EB0 0008EE10  38 03 84 E0 */	addi r0, r3, __CARDBlock@l
/* 80091EB4 0008EE14  7C 9C 23 79 */	or. r28, r4, r4
/* 80091EB8 0008EE18  7F E0 2A 14 */	add r31, r0, r5
/* 80091EBC 0008EE1C  41 80 00 F0 */	blt lbl_80091FAC
/* 80091EC0 0008EE20  83 BF 00 C0 */	lwz r29, 0xc0(r31)
/* 80091EC4 0008EE24  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80091EC8 0008EE28  2C 03 00 00 */	cmpwi r3, 0
/* 80091ECC 0008EE2C  40 80 00 0C */	bge lbl_80091ED8
/* 80091ED0 0008EE30  3B 80 FF F2 */	li r28, -14
/* 80091ED4 0008EE34  48 00 00 D8 */	b lbl_80091FAC
lbl_80091ED8:
/* 80091ED8 0008EE38  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80091EDC 0008EE3C  7C 00 18 50 */	subf r0, r0, r3
/* 80091EE0 0008EE40  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80091EE4 0008EE44  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80091EE8 0008EE48  2C 00 00 00 */	cmpwi r0, 0
/* 80091EEC 0008EE4C  41 81 00 54 */	bgt lbl_80091F40
/* 80091EF0 0008EE50  7F E3 FB 78 */	mr r3, r31
/* 80091EF4 0008EE54  4B FF CC E5 */	bl __CARDGetDirBlock
/* 80091EF8 0008EE58  80 BD 00 04 */	lwz r5, 4(r29)
/* 80091EFC 0008EE5C  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 80091F00 0008EE60  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 80091F04 0008EE64  54 A4 30 32 */	slwi r4, r5, 6
/* 80091F08 0008EE68  7F 83 22 14 */	add r28, r3, r4
/* 80091F0C 0008EE6C  54 1D F0 BE */	srwi r29, r0, 2
/* 80091F10 0008EE70  4B FE D7 E9 */	bl OSGetTime
/* 80091F14 0008EE74  38 DD 00 00 */	addi r6, r29, 0
/* 80091F18 0008EE78  38 A0 00 00 */	li r5, 0
/* 80091F1C 0008EE7C  48 00 91 01 */	bl __div2i
/* 80091F20 0008EE80  90 9C 00 28 */	stw r4, 0x28(r28)
/* 80091F24 0008EE84  38 00 00 00 */	li r0, 0
/* 80091F28 0008EE88  38 7E 00 00 */	addi r3, r30, 0
/* 80091F2C 0008EE8C  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 80091F30 0008EE90  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80091F34 0008EE94  4B FF CE 45 */	bl __CARDUpdateDir
/* 80091F38 0008EE98  7C 7C 1B 78 */	mr r28, r3
/* 80091F3C 0008EE9C  48 00 00 68 */	b lbl_80091FA4
lbl_80091F40:
/* 80091F40 0008EEA0  7F E3 FB 78 */	mr r3, r31
/* 80091F44 0008EEA4  4B FF C8 91 */	bl __CARDGetFatBlock
/* 80091F48 0008EEA8  80 9D 00 08 */	lwz r4, 8(r29)
/* 80091F4C 0008EEAC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80091F50 0008EEB0  7C 04 02 14 */	add r0, r4, r0
/* 80091F54 0008EEB4  90 1D 00 08 */	stw r0, 8(r29)
/* 80091F58 0008EEB8  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 80091F5C 0008EEBC  54 00 08 3C */	slwi r0, r0, 1
/* 80091F60 0008EEC0  7C 03 02 2E */	lhzx r0, r3, r0
/* 80091F64 0008EEC4  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 80091F68 0008EEC8  A0 9D 00 10 */	lhz r4, 0x10(r29)
/* 80091F6C 0008EECC  28 04 00 05 */	cmplwi r4, 5
/* 80091F70 0008EED0  41 80 00 10 */	blt lbl_80091F80
/* 80091F74 0008EED4  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 80091F78 0008EED8  7C 04 00 40 */	cmplw r4, r0
/* 80091F7C 0008EEDC  41 80 00 0C */	blt lbl_80091F88
lbl_80091F80:
/* 80091F80 0008EEE0  3B 80 FF FA */	li r28, -6
/* 80091F84 0008EEE4  48 00 00 28 */	b lbl_80091FAC
lbl_80091F88:
/* 80091F88 0008EEE8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80091F8C 0008EEEC  3C 60 80 09 */	lis r3, EraseCallback@ha
/* 80091F90 0008EEF0  38 A3 1F F8 */	addi r5, r3, EraseCallback@l
/* 80091F94 0008EEF4  7C 80 21 D6 */	mullw r4, r0, r4
/* 80091F98 0008EEF8  38 7E 00 00 */	addi r3, r30, 0
/* 80091F9C 0008EEFC  4B FF BF FD */	bl __CARDEraseSector
/* 80091FA0 0008EF00  7C 7C 1B 78 */	mr r28, r3
lbl_80091FA4:
/* 80091FA4 0008EF04  2C 1C 00 00 */	cmpwi r28, 0
/* 80091FA8 0008EF08  40 80 00 30 */	bge lbl_80091FD8
lbl_80091FAC:
/* 80091FAC 0008EF0C  83 BF 00 D0 */	lwz r29, 0xd0(r31)
/* 80091FB0 0008EF10  38 00 00 00 */	li r0, 0
/* 80091FB4 0008EF14  38 7F 00 00 */	addi r3, r31, 0
/* 80091FB8 0008EF18  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80091FBC 0008EF1C  7F 84 E3 78 */	mr r4, r28
/* 80091FC0 0008EF20  4B FF C2 45 */	bl __CARDPutControlBlock
/* 80091FC4 0008EF24  39 9D 00 00 */	addi r12, r29, 0
/* 80091FC8 0008EF28  7D 88 03 A6 */	mtlr r12
/* 80091FCC 0008EF2C  38 7E 00 00 */	addi r3, r30, 0
/* 80091FD0 0008EF30  38 9C 00 00 */	addi r4, r28, 0
/* 80091FD4 0008EF34  4E 80 00 21 */	blrl 
lbl_80091FD8:
/* 80091FD8 0008EF38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80091FDC 0008EF3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80091FE0 0008EF40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80091FE4 0008EF44  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80091FE8 0008EF48  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80091FEC 0008EF4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80091FF0 0008EF50  7C 08 03 A6 */	mtlr r0
/* 80091FF4 0008EF54  4E 80 00 20 */	blr 

.global EraseCallback
EraseCallback:
/* 80091FF8 0008EF58  7C 08 02 A6 */	mflr r0
/* 80091FFC 0008EF5C  90 01 00 04 */	stw r0, 4(r1)
/* 80092000 0008EF60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80092004 0008EF64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80092008 0008EF68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009200C 0008EF6C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80092010 0008EF70  7C 9D 23 79 */	or. r29, r4, r4
/* 80092014 0008EF74  93 81 00 10 */	stw r28, 0x10(r1)
/* 80092018 0008EF78  3B 83 00 00 */	addi r28, r3, 0
/* 8009201C 0008EF7C  1C BC 01 10 */	mulli r5, r28, 0x110
/* 80092020 0008EF80  3C 60 80 21 */	lis r3, __CARDBlock@ha
/* 80092024 0008EF84  38 03 84 E0 */	addi r0, r3, __CARDBlock@l
/* 80092028 0008EF88  7F E0 2A 14 */	add r31, r0, r5
/* 8009202C 0008EF8C  41 80 00 30 */	blt lbl_8009205C
/* 80092030 0008EF90  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 80092034 0008EF94  3C 60 80 09 */	lis r3, WriteCallback@ha
/* 80092038 0008EF98  38 E3 1E 88 */	addi r7, r3, WriteCallback@l
/* 8009203C 0008EF9C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80092040 0008EFA0  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 80092044 0008EFA4  80 DF 00 B4 */	lwz r6, 0xb4(r31)
/* 80092048 0008EFA8  38 7C 00 00 */	addi r3, r28, 0
/* 8009204C 0008EFAC  7C 85 01 D6 */	mullw r4, r5, r0
/* 80092050 0008EFB0  4B FF C7 21 */	bl __CARDWrite
/* 80092054 0008EFB4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80092058 0008EFB8  40 80 00 30 */	bge lbl_80092088
lbl_8009205C:
/* 8009205C 0008EFBC  83 DF 00 D0 */	lwz r30, 0xd0(r31)
/* 80092060 0008EFC0  38 00 00 00 */	li r0, 0
/* 80092064 0008EFC4  38 7F 00 00 */	addi r3, r31, 0
/* 80092068 0008EFC8  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8009206C 0008EFCC  7F A4 EB 78 */	mr r4, r29
/* 80092070 0008EFD0  4B FF C1 95 */	bl __CARDPutControlBlock
/* 80092074 0008EFD4  39 9E 00 00 */	addi r12, r30, 0
/* 80092078 0008EFD8  7D 88 03 A6 */	mtlr r12
/* 8009207C 0008EFDC  38 7C 00 00 */	addi r3, r28, 0
/* 80092080 0008EFE0  38 9D 00 00 */	addi r4, r29, 0
/* 80092084 0008EFE4  4E 80 00 21 */	blrl 
lbl_80092088:
/* 80092088 0008EFE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009208C 0008EFEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80092090 0008EFF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80092094 0008EFF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80092098 0008EFF8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8009209C 0008EFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 800920A0 0008F000  7C 08 03 A6 */	mtlr r0
/* 800920A4 0008F004  4E 80 00 20 */	blr 

.global CARDWriteAsync
CARDWriteAsync:
/* 800920A8 0008F008  7C 08 02 A6 */	mflr r0
/* 800920AC 0008F00C  90 01 00 04 */	stw r0, 4(r1)
/* 800920B0 0008F010  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800920B4 0008F014  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800920B8 0008F018  3B 86 00 00 */	addi r28, r6, 0
/* 800920BC 0008F01C  3B 65 00 00 */	addi r27, r5, 0
/* 800920C0 0008F020  3B E4 00 00 */	addi r31, r4, 0
/* 800920C4 0008F024  3B C3 00 00 */	addi r30, r3, 0
/* 800920C8 0008F028  3B A7 00 00 */	addi r29, r7, 0
/* 800920CC 0008F02C  38 9B 00 00 */	addi r4, r27, 0
/* 800920D0 0008F030  38 BC 00 00 */	addi r5, r28, 0
/* 800920D4 0008F034  38 C1 00 1C */	addi r6, r1, 0x1c
/* 800920D8 0008F038  4B FF F9 39 */	bl __CARDSeek
/* 800920DC 0008F03C  2C 03 00 00 */	cmpwi r3, 0
/* 800920E0 0008F040  40 80 00 08 */	bge lbl_800920E8
/* 800920E4 0008F044  48 00 00 C4 */	b lbl_800921A8
lbl_800920E8:
/* 800920E8 0008F048  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 800920EC 0008F04C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 800920F0 0008F050  38 84 FF FF */	addi r4, r4, -1
/* 800920F4 0008F054  7F 80 20 39 */	and. r0, r28, r4
/* 800920F8 0008F058  40 82 00 0C */	bne lbl_80092104
/* 800920FC 0008F05C  7F 60 20 39 */	and. r0, r27, r4
/* 80092100 0008F060  41 82 00 10 */	beq lbl_80092110
lbl_80092104:
/* 80092104 0008F064  38 80 FF 80 */	li r4, -128
/* 80092108 0008F068  4B FF C0 FD */	bl __CARDPutControlBlock
/* 8009210C 0008F06C  48 00 00 9C */	b lbl_800921A8
lbl_80092110:
/* 80092110 0008F070  4B FF CA C9 */	bl __CARDGetDirBlock
/* 80092114 0008F074  80 1E 00 04 */	lwz r0, 4(r30)
/* 80092118 0008F078  54 00 30 32 */	slwi r0, r0, 6
/* 8009211C 0008F07C  7C 83 02 14 */	add r4, r3, r0
/* 80092120 0008F080  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80092124 0008F084  4B FF F0 09 */	bl __CARDAccess
/* 80092128 0008F088  7C 64 1B 79 */	or. r4, r3, r3
/* 8009212C 0008F08C  40 80 00 10 */	bge lbl_8009213C
/* 80092130 0008F090  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80092134 0008F094  4B FF C0 D1 */	bl __CARDPutControlBlock
/* 80092138 0008F098  48 00 00 70 */	b lbl_800921A8
lbl_8009213C:
/* 8009213C 0008F09C  38 7F 00 00 */	addi r3, r31, 0
/* 80092140 0008F0A0  38 9B 00 00 */	addi r4, r27, 0
/* 80092144 0008F0A4  4B FE 7A 75 */	bl DCStoreRange
/* 80092148 0008F0A8  28 1D 00 00 */	cmplwi r29, 0
/* 8009214C 0008F0AC  41 82 00 0C */	beq lbl_80092158
/* 80092150 0008F0B0  7F A0 EB 78 */	mr r0, r29
/* 80092154 0008F0B4  48 00 00 0C */	b lbl_80092160
lbl_80092158:
/* 80092158 0008F0B8  3C 60 80 09 */	lis r3, __CARDDefaultApiCallback@ha
/* 8009215C 0008F0BC  38 03 D2 04 */	addi r0, r3, __CARDDefaultApiCallback@l
lbl_80092160:
/* 80092160 0008F0C0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80092164 0008F0C4  3C 60 80 09 */	lis r3, EraseCallback@ha
/* 80092168 0008F0C8  38 A3 1F F8 */	addi r5, r3, EraseCallback@l
/* 8009216C 0008F0CC  90 04 00 D0 */	stw r0, 0xd0(r4)
/* 80092170 0008F0D0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80092174 0008F0D4  93 E3 00 B4 */	stw r31, 0xb4(r3)
/* 80092178 0008F0D8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8009217C 0008F0DC  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 80092180 0008F0E0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80092184 0008F0E4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80092188 0008F0E8  7C 84 01 D6 */	mullw r4, r4, r0
/* 8009218C 0008F0EC  4B FF BE 0D */	bl __CARDEraseSector
/* 80092190 0008F0F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80092194 0008F0F4  40 80 00 10 */	bge lbl_800921A4
/* 80092198 0008F0F8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8009219C 0008F0FC  7F C4 F3 78 */	mr r4, r30
/* 800921A0 0008F100  4B FF C0 65 */	bl __CARDPutControlBlock
lbl_800921A4:
/* 800921A4 0008F104  7F C3 F3 78 */	mr r3, r30
lbl_800921A8:
/* 800921A8 0008F108  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800921AC 0008F10C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800921B0 0008F110  38 21 00 38 */	addi r1, r1, 0x38
/* 800921B4 0008F114  7C 08 03 A6 */	mtlr r0
/* 800921B8 0008F118  4E 80 00 20 */	blr 

.global CARDWrite
CARDWrite:
/* 800921BC 0008F11C  7C 08 02 A6 */	mflr r0
/* 800921C0 0008F120  3C E0 80 09 */	lis r7, __CARDSyncCallback@ha
/* 800921C4 0008F124  90 01 00 04 */	stw r0, 4(r1)
/* 800921C8 0008F128  38 E7 D2 08 */	addi r7, r7, __CARDSyncCallback@l
/* 800921CC 0008F12C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800921D0 0008F130  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800921D4 0008F134  3B E3 00 00 */	addi r31, r3, 0
/* 800921D8 0008F138  4B FF FE D1 */	bl CARDWriteAsync
/* 800921DC 0008F13C  2C 03 00 00 */	cmpwi r3, 0
/* 800921E0 0008F140  40 80 00 08 */	bge lbl_800921E8
/* 800921E4 0008F144  48 00 00 0C */	b lbl_800921F0
lbl_800921E8:
/* 800921E8 0008F148  80 7F 00 00 */	lwz r3, 0(r31)
/* 800921EC 0008F14C  4B FF C2 81 */	bl __CARDSync
lbl_800921F0:
/* 800921F0 0008F150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800921F4 0008F154  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800921F8 0008F158  38 21 00 20 */	addi r1, r1, 0x20
/* 800921FC 0008F15C  7C 08 03 A6 */	mtlr r0
/* 80092200 0008F160  4E 80 00 20 */	blr 
