.include "macros.inc"

.section .text

.org 0x80066E84

.global __ct__11JKRAramHeapFUlUl
__ct__11JKRAramHeapFUlUl:
/* 80066E84 00063DE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80066E88 00063DE8  7C 08 02 A6 */	mflr r0
/* 80066E8C 00063DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80066E90 00063DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80066E94 00063DF4  48 03 40 41 */	bl func_8009AED4
/* 80066E98 00063DF8  7C 7D 1B 78 */	mr r29, r3
/* 80066E9C 00063DFC  7C 9E 23 78 */	mr r30, r4
/* 80066EA0 00063E00  7C BF 2B 78 */	mr r31, r5
/* 80066EA4 00063E04  4B FF EB FD */	bl __ct__11JKRDisposerFv
/* 80066EA8 00063E08  3C 80 80 0E */	lis r4, __vt__11JKRAramHeap@ha
/* 80066EAC 00063E0C  38 7D 00 18 */	addi r3, r29, 0x18
/* 80066EB0 00063E10  38 04 E4 E4 */	addi r0, r4, __vt__11JKRAramHeap@l
/* 80066EB4 00063E14  90 1D 00 00 */	stw r0, 0(r29)
/* 80066EB8 00063E18  48 01 53 F1 */	bl OSInitMutex
/* 80066EBC 00063E1C  7F A3 EB 78 */	mr r3, r29
/* 80066EC0 00063E20  4B FF CE 25 */	bl findFromRoot__7JKRHeapFPv
/* 80066EC4 00063E24  90 7D 00 30 */	stw r3, 0x30(r29)
/* 80066EC8 00063E28  57 E4 00 34 */	rlwinm r4, r31, 0, 0, 0x1a
/* 80066ECC 00063E2C  38 7E 00 1F */	addi r3, r30, 0x1f
/* 80066ED0 00063E30  38 00 00 FF */	li r0, 0xff
/* 80066ED4 00063E34  90 9D 00 3C */	stw r4, 0x3c(r29)
/* 80066ED8 00063E38  54 64 00 34 */	rlwinm r4, r3, 0, 0, 0x1a
/* 80066EDC 00063E3C  38 60 00 24 */	li r3, 0x24
/* 80066EE0 00063E40  38 A0 00 00 */	li r5, 0
/* 80066EE4 00063E44  90 9D 00 34 */	stw r4, 0x34(r29)
/* 80066EE8 00063E48  80 DD 00 34 */	lwz r6, 0x34(r29)
/* 80066EEC 00063E4C  80 9D 00 3C */	lwz r4, 0x3c(r29)
/* 80066EF0 00063E50  7C 86 22 14 */	add r4, r6, r4
/* 80066EF4 00063E54  90 9D 00 38 */	stw r4, 0x38(r29)
/* 80066EF8 00063E58  98 1D 00 40 */	stb r0, 0x40(r29)
/* 80066EFC 00063E5C  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 80066F00 00063E60  4B FF D0 59 */	bl __nw__FUlP7JKRHeapi
/* 80066F04 00063E64  7C 64 1B 79 */	or. r4, r3, r3
/* 80066F08 00063E68  41 82 00 20 */	beq lbl_80066F28
/* 80066F0C 00063E6C  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 80066F10 00063E70  38 A0 00 00 */	li r5, 0
/* 80066F14 00063E74  80 DD 00 3C */	lwz r6, 0x3c(r29)
/* 80066F18 00063E78  38 E0 00 FF */	li r7, 0xff
/* 80066F1C 00063E7C  39 00 00 00 */	li r8, 0
/* 80066F20 00063E80  48 00 03 39 */	bl __ct__12JKRAramBlockFUlUlUlUcb
/* 80066F24 00063E84  7C 64 1B 78 */	mr r4, r3
lbl_80066F28:
/* 80066F28 00063E88  3C 60 80 20 */	lis r3, sAramList__11JKRAramHeap@ha
/* 80066F2C 00063E8C  38 84 00 04 */	addi r4, r4, 4
/* 80066F30 00063E90  38 63 70 44 */	addi r3, r3, sAramList__11JKRAramHeap@l
/* 80066F34 00063E94  48 00 6F 75 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 80066F38 00063E98  7F A3 EB 78 */	mr r3, r29
/* 80066F3C 00063E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80066F40 00063EA0  48 03 3F E1 */	bl func_8009AF20
/* 80066F44 00063EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80066F48 00063EA8  7C 08 03 A6 */	mtlr r0
/* 80066F4C 00063EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80066F50 00063EB0  4E 80 00 20 */	blr 

.global __dt__11JKRAramHeapFv
__dt__11JKRAramHeapFv:
/* 80066F54 00063EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80066F58 00063EB8  7C 08 02 A6 */	mflr r0
/* 80066F5C 00063EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80066F60 00063EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80066F64 00063EC4  48 03 3F 71 */	bl func_8009AED4
/* 80066F68 00063EC8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80066F6C 00063ECC  7C 9E 23 78 */	mr r30, r4
/* 80066F70 00063ED0  41 82 00 68 */	beq lbl_80066FD8
/* 80066F74 00063ED4  3C 80 80 0E */	lis r4, __vt__11JKRAramHeap@ha
/* 80066F78 00063ED8  3C 60 80 20 */	lis r3, sAramList__11JKRAramHeap@ha
/* 80066F7C 00063EDC  38 04 E4 E4 */	addi r0, r4, __vt__11JKRAramHeap@l
/* 80066F80 00063EE0  90 1D 00 00 */	stw r0, 0(r29)
/* 80066F84 00063EE4  83 E3 70 44 */	lwz r31, sAramList__11JKRAramHeap@l(r3)
/* 80066F88 00063EE8  48 00 00 2C */	b lbl_80066FB4
lbl_80066F8C:
/* 80066F8C 00063EEC  7F E3 FB 78 */	mr r3, r31
/* 80066F90 00063EF0  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 80066F94 00063EF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80066F98 00063EF8  28 03 00 00 */	cmplwi r3, 0
/* 80066F9C 00063EFC  41 82 00 18 */	beq lbl_80066FB4
/* 80066FA0 00063F00  81 83 00 00 */	lwz r12, 0(r3)
/* 80066FA4 00063F04  38 80 00 01 */	li r4, 1
/* 80066FA8 00063F08  81 8C 00 08 */	lwz r12, 8(r12)
/* 80066FAC 00063F0C  7D 89 03 A6 */	mtctr r12
/* 80066FB0 00063F10  4E 80 04 21 */	bctrl 
lbl_80066FB4:
/* 80066FB4 00063F14  28 1F 00 00 */	cmplwi r31, 0
/* 80066FB8 00063F18  40 82 FF D4 */	bne lbl_80066F8C
/* 80066FBC 00063F1C  7F A3 EB 78 */	mr r3, r29
/* 80066FC0 00063F20  38 80 00 00 */	li r4, 0
/* 80066FC4 00063F24  4B FF EB 45 */	bl __dt__11JKRDisposerFv
/* 80066FC8 00063F28  7F C0 07 35 */	extsh. r0, r30
/* 80066FCC 00063F2C  40 81 00 0C */	ble lbl_80066FD8
/* 80066FD0 00063F30  7F A3 EB 78 */	mr r3, r29
/* 80066FD4 00063F34  4B FF CF DD */	bl __dl__FPv
lbl_80066FD8:
/* 80066FD8 00063F38  7F A3 EB 78 */	mr r3, r29
/* 80066FDC 00063F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80066FE0 00063F40  48 03 3F 41 */	bl func_8009AF20
/* 80066FE4 00063F44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80066FE8 00063F48  7C 08 03 A6 */	mtlr r0
/* 80066FEC 00063F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80066FF0 00063F50  4E 80 00 20 */	blr 

.global alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode:
/* 80066FF4 00063F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80066FF8 00063F58  7C 08 02 A6 */	mflr r0
/* 80066FFC 00063F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80067000 00063F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80067004 00063F64  48 03 3E D1 */	bl func_8009AED4
/* 80067008 00063F68  7C 7D 1B 78 */	mr r29, r3
/* 8006700C 00063F6C  7C 9E 23 78 */	mr r30, r4
/* 80067010 00063F70  7C BF 2B 78 */	mr r31, r5
/* 80067014 00063F74  38 7D 00 18 */	addi r3, r29, 0x18
/* 80067018 00063F78  48 01 52 C9 */	bl OSLockMutex
/* 8006701C 00063F7C  2C 1F 00 00 */	cmpwi r31, 0
/* 80067020 00063F80  40 82 00 18 */	bne lbl_80067038
/* 80067024 00063F84  7F A3 EB 78 */	mr r3, r29
/* 80067028 00063F88  7F C4 F3 78 */	mr r4, r30
/* 8006702C 00063F8C  48 00 00 41 */	bl allocFromHead__11JKRAramHeapFUl
/* 80067030 00063F90  7C 7F 1B 78 */	mr r31, r3
/* 80067034 00063F94  48 00 00 14 */	b lbl_80067048
lbl_80067038:
/* 80067038 00063F98  7F A3 EB 78 */	mr r3, r29
/* 8006703C 00063F9C  7F C4 F3 78 */	mr r4, r30
/* 80067040 00063FA0  48 00 00 B5 */	bl allocFromTail__11JKRAramHeapFUl
/* 80067044 00063FA4  7C 7F 1B 78 */	mr r31, r3
lbl_80067048:
/* 80067048 00063FA8  38 7D 00 18 */	addi r3, r29, 0x18
/* 8006704C 00063FAC  48 01 53 71 */	bl OSUnlockMutex
/* 80067050 00063FB0  7F E3 FB 78 */	mr r3, r31
/* 80067054 00063FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80067058 00063FB8  48 03 3E C9 */	bl func_8009AF20
/* 8006705C 00063FBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80067060 00063FC0  7C 08 03 A6 */	mtlr r0
/* 80067064 00063FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80067068 00063FC8  4E 80 00 20 */	blr 

.global allocFromHead__11JKRAramHeapFUl
allocFromHead__11JKRAramHeapFUl:
/* 8006706C 00063FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80067070 00063FD0  7C 08 02 A6 */	mflr r0
/* 80067074 00063FD4  7C 66 1B 78 */	mr r6, r3
/* 80067078 00063FD8  3C A0 80 20 */	lis r5, sAramList__11JKRAramHeap@ha
/* 8006707C 00063FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80067080 00063FE0  38 04 00 1F */	addi r0, r4, 0x1f
/* 80067084 00063FE4  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80067088 00063FE8  39 00 FF FF */	li r8, -1
/* 8006708C 00063FEC  80 E5 70 44 */	lwz r7, sAramList__11JKRAramHeap@l(r5)
/* 80067090 00063FF0  38 60 00 00 */	li r3, 0
/* 80067094 00063FF4  48 00 00 30 */	b lbl_800670C4
lbl_80067098:
/* 80067098 00063FF8  80 A7 00 00 */	lwz r5, 0(r7)
/* 8006709C 00063FFC  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 800670A0 00064000  7C 00 20 40 */	cmplw r0, r4
/* 800670A4 00064004  41 80 00 1C */	blt lbl_800670C0
/* 800670A8 00064008  7C 08 00 40 */	cmplw r8, r0
/* 800670AC 0006400C  40 81 00 14 */	ble lbl_800670C0
/* 800670B0 00064010  7C 00 20 40 */	cmplw r0, r4
/* 800670B4 00064014  7C 08 03 78 */	mr r8, r0
/* 800670B8 00064018  7C A3 2B 78 */	mr r3, r5
/* 800670BC 0006401C  41 82 00 10 */	beq lbl_800670CC
lbl_800670C0:
/* 800670C0 00064020  80 E7 00 0C */	lwz r7, 0xc(r7)
lbl_800670C4:
/* 800670C4 00064024  28 07 00 00 */	cmplwi r7, 0
/* 800670C8 00064028  40 82 FF D0 */	bne lbl_80067098
lbl_800670CC:
/* 800670CC 0006402C  28 03 00 00 */	cmplwi r3, 0
/* 800670D0 00064030  41 82 00 10 */	beq lbl_800670E0
/* 800670D4 00064034  88 A6 00 40 */	lbz r5, 0x40(r6)
/* 800670D8 00064038  48 00 02 B1 */	bl allocHead__12JKRAramBlockFUlUcP11JKRAramHeap
/* 800670DC 0006403C  48 00 00 08 */	b lbl_800670E4
lbl_800670E0:
/* 800670E0 00064040  38 60 00 00 */	li r3, 0
lbl_800670E4:
/* 800670E4 00064044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800670E8 00064048  7C 08 03 A6 */	mtlr r0
/* 800670EC 0006404C  38 21 00 10 */	addi r1, r1, 0x10
/* 800670F0 00064050  4E 80 00 20 */	blr 

.global allocFromTail__11JKRAramHeapFUl
allocFromTail__11JKRAramHeapFUl:
/* 800670F4 00064054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800670F8 00064058  7C 08 02 A6 */	mflr r0
/* 800670FC 0006405C  7C 66 1B 78 */	mr r6, r3
/* 80067100 00064060  3C A0 80 20 */	lis r5, sAramList__11JKRAramHeap@ha
/* 80067104 00064064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80067108 00064068  38 04 00 1F */	addi r0, r4, 0x1f
/* 8006710C 0006406C  38 85 70 44 */	addi r4, r5, sAramList__11JKRAramHeap@l
/* 80067110 00064070  38 60 00 00 */	li r3, 0
/* 80067114 00064074  80 E4 00 04 */	lwz r7, 4(r4)
/* 80067118 00064078  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 8006711C 0006407C  48 00 00 20 */	b lbl_8006713C
lbl_80067120:
/* 80067120 00064080  80 A7 00 00 */	lwz r5, 0(r7)
/* 80067124 00064084  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 80067128 00064088  7C 00 20 40 */	cmplw r0, r4
/* 8006712C 0006408C  41 80 00 0C */	blt lbl_80067138
/* 80067130 00064090  7C A3 2B 78 */	mr r3, r5
/* 80067134 00064094  48 00 00 10 */	b lbl_80067144
lbl_80067138:
/* 80067138 00064098  80 E7 00 08 */	lwz r7, 8(r7)
lbl_8006713C:
/* 8006713C 0006409C  28 07 00 00 */	cmplwi r7, 0
/* 80067140 000640A0  40 82 FF E0 */	bne lbl_80067120
lbl_80067144:
/* 80067144 000640A4  28 03 00 00 */	cmplwi r3, 0
/* 80067148 000640A8  41 82 00 10 */	beq lbl_80067158
/* 8006714C 000640AC  88 A6 00 40 */	lbz r5, 0x40(r6)
/* 80067150 000640B0  48 00 02 D5 */	bl allocTail__12JKRAramBlockFUlUcP11JKRAramHeap
/* 80067154 000640B4  48 00 00 08 */	b lbl_8006715C
lbl_80067158:
/* 80067158 000640B8  38 60 00 00 */	li r3, 0
lbl_8006715C:
/* 8006715C 000640BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80067160 000640C0  7C 08 03 A6 */	mtlr r0
/* 80067164 000640C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80067168 000640C8  4E 80 00 20 */	blr 

.global dump__11JKRAramHeapFv
dump__11JKRAramHeapFv:
/* 8006716C 000640CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80067170 000640D0  7C 08 02 A6 */	mflr r0
/* 80067174 000640D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80067178 000640D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006717C 000640DC  7C 7F 1B 78 */	mr r31, r3
/* 80067180 000640E0  38 7F 00 18 */	addi r3, r31, 0x18
/* 80067184 000640E4  48 01 51 5D */	bl OSLockMutex
/* 80067188 000640E8  3C 60 80 20 */	lis r3, sAramList__11JKRAramHeap@ha
/* 8006718C 000640EC  38 63 70 44 */	addi r3, r3, sAramList__11JKRAramHeap@l
/* 80067190 000640F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80067194 000640F4  48 00 00 08 */	b lbl_8006719C
lbl_80067198:
/* 80067198 000640F8  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_8006719C:
/* 8006719C 000640FC  28 03 00 00 */	cmplwi r3, 0
/* 800671A0 00064100  40 82 FF F8 */	bne lbl_80067198
/* 800671A4 00064104  38 7F 00 18 */	addi r3, r31, 0x18
/* 800671A8 00064108  48 01 52 15 */	bl OSUnlockMutex
/* 800671AC 0006410C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800671B0 00064110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800671B4 00064114  7C 08 03 A6 */	mtlr r0
/* 800671B8 00064118  38 21 00 10 */	addi r1, r1, 0x10
/* 800671BC 0006411C  4E 80 00 20 */	blr 

.global __sinit_JKRAramHeap_cpp
__sinit_JKRAramHeap_cpp:
/* 800671C0 00064120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800671C4 00064124  7C 08 02 A6 */	mflr r0
/* 800671C8 00064128  3C 60 80 20 */	lis r3, sAramList__11JKRAramHeap@ha
/* 800671CC 0006412C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800671D0 00064130  38 63 70 44 */	addi r3, r3, sAramList__11JKRAramHeap@l
/* 800671D4 00064134  48 00 6C 9D */	bl initiate__10JSUPtrListFv
/* 800671D8 00064138  3C 60 80 20 */	lis r3, sAramList__11JKRAramHeap@ha
/* 800671DC 0006413C  3C 80 80 06 */	lis r4, __dt__23JSUList<12JKRAramBlock>Fv@ha
/* 800671E0 00064140  3C A0 80 20 */	lis r5, @262@ha
/* 800671E4 00064144  38 63 70 44 */	addi r3, r3, sAramList__11JKRAramHeap@l
/* 800671E8 00064148  38 84 72 04 */	addi r4, r4, __dt__23JSUList<12JKRAramBlock>Fv@l
/* 800671EC 0006414C  38 A5 70 38 */	addi r5, r5, @262@l
/* 800671F0 00064150  48 03 38 ED */	bl __register_global_object
/* 800671F4 00064154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800671F8 00064158  7C 08 03 A6 */	mtlr r0
/* 800671FC 0006415C  38 21 00 10 */	addi r1, r1, 0x10
/* 80067200 00064160  4E 80 00 20 */	blr 

.global __dt__23JSUList<12JKRAramBlock>Fv
__dt__23JSUList<12JKRAramBlock>Fv:
/* 80067204 00064164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80067208 00064168  7C 08 02 A6 */	mflr r0
/* 8006720C 0006416C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80067210 00064170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80067214 00064174  7C 9F 23 78 */	mr r31, r4
/* 80067218 00064178  93 C1 00 08 */	stw r30, 8(r1)
/* 8006721C 0006417C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80067220 00064180  41 82 00 1C */	beq lbl_8006723C
/* 80067224 00064184  38 80 00 00 */	li r4, 0
/* 80067228 00064188  48 00 6B E1 */	bl __dt__10JSUPtrListFv
/* 8006722C 0006418C  7F E0 07 35 */	extsh. r0, r31
/* 80067230 00064190  40 81 00 0C */	ble lbl_8006723C
/* 80067234 00064194  7F C3 F3 78 */	mr r3, r30
/* 80067238 00064198  4B FF CD 79 */	bl __dl__FPv
lbl_8006723C:
/* 8006723C 0006419C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80067240 000641A0  7F C3 F3 78 */	mr r3, r30
/* 80067244 000641A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80067248 000641A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006724C 000641AC  7C 08 03 A6 */	mtlr r0
/* 80067250 000641B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80067254 000641B4  4E 80 00 20 */	blr 
