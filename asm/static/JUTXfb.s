.include "macros.inc"

.section .text

.org 0x80073E64

.global clearIndex__6JUTXfbFv
clearIndex__6JUTXfbFv:
/* 80073E64 00070DC4  38 00 FF FF */	li r0, -1
/* 80073E68 00070DC8  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80073E6C 00070DCC  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80073E70 00070DD0  B0 03 00 18 */	sth r0, 0x18(r3)
/* 80073E74 00070DD4  4E 80 00 20 */	blr 

.global common_init__6JUTXfbFi
common_init__6JUTXfbFi:
/* 80073E78 00070DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073E7C 00070DDC  7C 08 02 A6 */	mflr r0
/* 80073E80 00070DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073E84 00070DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80073E88 00070DE8  7C 7F 1B 78 */	mr r31, r3
/* 80073E8C 00070DEC  90 83 00 10 */	stw r4, 0x10(r3)
/* 80073E90 00070DF0  4B FF FF D5 */	bl clearIndex__6JUTXfbFv
/* 80073E94 00070DF4  38 00 00 63 */	li r0, 0x63
/* 80073E98 00070DF8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80073E9C 00070DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073EA0 00070E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073EA4 00070E04  7C 08 03 A6 */	mtlr r0
/* 80073EA8 00070E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80073EAC 00070E0C  4E 80 00 20 */	blr 

.global __ct__6JUTXfbFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumber
__ct__6JUTXfbFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumber:
/* 80073EB0 00070E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073EB4 00070E14  7C 08 02 A6 */	mflr r0
/* 80073EB8 00070E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073EBC 00070E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80073EC0 00070E20  48 02 70 11 */	bl func_8009AED0
/* 80073EC4 00070E24  7C DF 33 78 */	mr r31, r6
/* 80073EC8 00070E28  7C 9D 23 78 */	mr r29, r4
/* 80073ECC 00070E2C  7C 7C 1B 78 */	mr r28, r3
/* 80073ED0 00070E30  7C BE 2B 78 */	mr r30, r5
/* 80073ED4 00070E34  7F E4 FB 78 */	mr r4, r31
/* 80073ED8 00070E38  4B FF FF A1 */	bl common_init__6JUTXfbFi
/* 80073EDC 00070E3C  28 1D 00 00 */	cmplwi r29, 0
/* 80073EE0 00070E40  41 82 00 20 */	beq lbl_80073F00
/* 80073EE4 00070E44  A0 9D 00 04 */	lhz r4, 4(r29)
/* 80073EE8 00070E48  7F 83 E3 78 */	mr r3, r28
/* 80073EEC 00070E4C  A0 BD 00 08 */	lhz r5, 8(r29)
/* 80073EF0 00070E50  7F C6 F3 78 */	mr r6, r30
/* 80073EF4 00070E54  7F E7 FB 78 */	mr r7, r31
/* 80073EF8 00070E58  48 00 01 95 */	bl initiate__6JUTXfbFUsUsP7JKRHeapQ26JUTXfb10EXfbNumber
/* 80073EFC 00070E5C  48 00 00 24 */	b lbl_80073F20
lbl_80073F00:
/* 80073F00 00070E60  80 8D 8C E8 */	lwz r4, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073F04 00070E64  7F 83 E3 78 */	mr r3, r28
/* 80073F08 00070E68  7F C6 F3 78 */	mr r6, r30
/* 80073F0C 00070E6C  7F E7 FB 78 */	mr r7, r31
/* 80073F10 00070E70  80 A4 00 04 */	lwz r5, 4(r4)
/* 80073F14 00070E74  A0 85 00 04 */	lhz r4, 4(r5)
/* 80073F18 00070E78  A0 A5 00 08 */	lhz r5, 8(r5)
/* 80073F1C 00070E7C  48 00 01 71 */	bl initiate__6JUTXfbFUsUsP7JKRHeapQ26JUTXfb10EXfbNumber
lbl_80073F20:
/* 80073F20 00070E80  7F 83 E3 78 */	mr r3, r28
/* 80073F24 00070E84  39 61 00 20 */	addi r11, r1, 0x20
/* 80073F28 00070E88  48 02 6F F5 */	bl func_8009AF1C
/* 80073F2C 00070E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80073F30 00070E90  7C 08 03 A6 */	mtlr r0
/* 80073F34 00070E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80073F38 00070E98  4E 80 00 20 */	blr 

.global __dt__6JUTXfbFv
__dt__6JUTXfbFv:
/* 80073F3C 00070E9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073F40 00070EA0  7C 08 02 A6 */	mflr r0
/* 80073F44 00070EA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073F48 00070EA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80073F4C 00070EAC  48 02 6F 89 */	bl func_8009AED4
/* 80073F50 00070EB0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80073F54 00070EB4  7C 9E 23 78 */	mr r30, r4
/* 80073F58 00070EB8  41 82 00 38 */	beq lbl_80073F90
/* 80073F5C 00070EBC  3B E0 00 00 */	li r31, 0
lbl_80073F60:
/* 80073F60 00070EC0  7F A3 EB 78 */	mr r3, r29
/* 80073F64 00070EC4  7F E4 FB 78 */	mr r4, r31
/* 80073F68 00070EC8  48 00 00 45 */	bl delXfb__6JUTXfbFi
/* 80073F6C 00070ECC  3B FF 00 01 */	addi r31, r31, 1
/* 80073F70 00070ED0  2C 1F 00 03 */	cmpwi r31, 3
/* 80073F74 00070ED4  41 80 FF EC */	blt lbl_80073F60
/* 80073F78 00070ED8  38 60 00 00 */	li r3, 0
/* 80073F7C 00070EDC  7F C0 07 35 */	extsh. r0, r30
/* 80073F80 00070EE0  90 6D 8D 00 */	stw r3, sManager__6JUTXfb-_SDA_BASE_(r13)
/* 80073F84 00070EE4  40 81 00 0C */	ble lbl_80073F90
/* 80073F88 00070EE8  7F A3 EB 78 */	mr r3, r29
/* 80073F8C 00070EEC  4B FF 00 25 */	bl __dl__FPv
lbl_80073F90:
/* 80073F90 00070EF0  7F A3 EB 78 */	mr r3, r29
/* 80073F94 00070EF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80073F98 00070EF8  48 02 6F 89 */	bl func_8009AF20
/* 80073F9C 00070EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80073FA0 00070F00  7C 08 03 A6 */	mtlr r0
/* 80073FA4 00070F04  38 21 00 20 */	addi r1, r1, 0x20
/* 80073FA8 00070F08  4E 80 00 20 */	blr 

.global delXfb__6JUTXfbFi
delXfb__6JUTXfbFi:
/* 80073FAC 00070F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073FB0 00070F10  7C 08 02 A6 */	mflr r0
/* 80073FB4 00070F14  7C A3 22 14 */	add r5, r3, r4
/* 80073FB8 00070F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073FBC 00070F1C  88 05 00 0C */	lbz r0, 0xc(r5)
/* 80073FC0 00070F20  28 00 00 00 */	cmplwi r0, 0
/* 80073FC4 00070F24  41 82 00 18 */	beq lbl_80073FDC
/* 80073FC8 00070F28  54 80 10 3A */	slwi r0, r4, 2
/* 80073FCC 00070F2C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80073FD0 00070F30  28 03 00 00 */	cmplwi r3, 0
/* 80073FD4 00070F34  41 82 00 08 */	beq lbl_80073FDC
/* 80073FD8 00070F38  4B FE FF D9 */	bl __dl__FPv
lbl_80073FDC:
/* 80073FDC 00070F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073FE0 00070F40  7C 08 03 A6 */	mtlr r0
/* 80073FE4 00070F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80073FE8 00070F48  4E 80 00 20 */	blr 

.global createManager__6JUTXfbFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumber
createManager__6JUTXfbFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumber:
/* 80073FEC 00070F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073FF0 00070F50  7C 08 02 A6 */	mflr r0
/* 80073FF4 00070F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073FF8 00070F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80073FFC 00070F5C  48 02 6E D9 */	bl func_8009AED4
/* 80074000 00070F60  80 0D 8D 00 */	lwz r0, sManager__6JUTXfb-_SDA_BASE_(r13)
/* 80074004 00070F64  7C 7D 1B 78 */	mr r29, r3
/* 80074008 00070F68  7C 9E 23 78 */	mr r30, r4
/* 8007400C 00070F6C  7C BF 2B 78 */	mr r31, r5
/* 80074010 00070F70  28 00 00 00 */	cmplwi r0, 0
/* 80074014 00070F74  40 82 00 2C */	bne lbl_80074040
/* 80074018 00070F78  38 60 00 20 */	li r3, 0x20
/* 8007401C 00070F7C  4B FE FF 15 */	bl __nw__FUl
/* 80074020 00070F80  7C 60 1B 79 */	or. r0, r3, r3
/* 80074024 00070F84  41 82 00 18 */	beq lbl_8007403C
/* 80074028 00070F88  7F A4 EB 78 */	mr r4, r29
/* 8007402C 00070F8C  7F C5 F3 78 */	mr r5, r30
/* 80074030 00070F90  7F E6 FB 78 */	mr r6, r31
/* 80074034 00070F94  4B FF FE 7D */	bl __ct__6JUTXfbFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumber
/* 80074038 00070F98  7C 60 1B 78 */	mr r0, r3
lbl_8007403C:
/* 8007403C 00070F9C  90 0D 8D 00 */	stw r0, sManager__6JUTXfb-_SDA_BASE_(r13)
lbl_80074040:
/* 80074040 00070FA0  80 6D 8D 00 */	lwz r3, sManager__6JUTXfb-_SDA_BASE_(r13)
/* 80074044 00070FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80074048 00070FA8  48 02 6E D9 */	bl func_8009AF20
/* 8007404C 00070FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80074050 00070FB0  7C 08 03 A6 */	mtlr r0
/* 80074054 00070FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80074058 00070FB8  4E 80 00 20 */	blr 

.global destroyManager__6JUTXfbFv
destroyManager__6JUTXfbFv:
/* 8007405C 00070FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074060 00070FC0  7C 08 02 A6 */	mflr r0
/* 80074064 00070FC4  38 80 00 01 */	li r4, 1
/* 80074068 00070FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007406C 00070FCC  80 6D 8D 00 */	lwz r3, sManager__6JUTXfb-_SDA_BASE_(r13)
/* 80074070 00070FD0  4B FF FE CD */	bl __dt__6JUTXfbFv
/* 80074074 00070FD4  38 00 00 00 */	li r0, 0
/* 80074078 00070FD8  90 0D 8D 00 */	stw r0, sManager__6JUTXfb-_SDA_BASE_(r13)
/* 8007407C 00070FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074080 00070FE0  7C 08 03 A6 */	mtlr r0
/* 80074084 00070FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80074088 00070FE8  4E 80 00 20 */	blr 

.global initiate__6JUTXfbFUsUsP7JKRHeapQ26JUTXfb10EXfbNumber
initiate__6JUTXfbFUsUsP7JKRHeapQ26JUTXfb10EXfbNumber:
/* 8007408C 00070FEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80074090 00070FF0  7C 08 02 A6 */	mflr r0
/* 80074094 00070FF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80074098 00070FF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8007409C 00070FFC  48 02 6E 35 */	bl func_8009AED0
/* 800740A0 00071000  7C DD 33 79 */	or. r29, r6, r6
/* 800740A4 00071004  7C 7C 1B 78 */	mr r28, r3
/* 800740A8 00071008  7C FE 3B 78 */	mr r30, r7
/* 800740AC 0007100C  40 82 00 08 */	bne lbl_800740B4
/* 800740B0 00071010  83 AD 8B 58 */	lwz r29, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_800740B4:
/* 800740B4 00071014  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 800740B8 00071018  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 800740BC 0007101C  38 63 00 0F */	addi r3, r3, 0xf
/* 800740C0 00071020  7F A4 EB 78 */	mr r4, r29
/* 800740C4 00071024  54 63 04 36 */	rlwinm r3, r3, 0, 0x10, 0x1b
/* 800740C8 00071028  38 A0 00 20 */	li r5, 0x20
/* 800740CC 0007102C  7C 03 01 D6 */	mullw r0, r3, r0
/* 800740D0 00071030  54 1F 08 3C */	slwi r31, r0, 1
/* 800740D4 00071034  7F E3 FB 78 */	mr r3, r31
/* 800740D8 00071038  4B FE FE AD */	bl __nwa__FUlP7JKRHeapi
/* 800740DC 0007103C  90 7C 00 00 */	stw r3, 0(r28)
/* 800740E0 00071040  38 00 00 01 */	li r0, 1
/* 800740E4 00071044  2C 1E 00 02 */	cmpwi r30, 2
/* 800740E8 00071048  98 1C 00 0C */	stb r0, 0xc(r28)
/* 800740EC 0007104C  41 80 00 24 */	blt lbl_80074110
/* 800740F0 00071050  7F E3 FB 78 */	mr r3, r31
/* 800740F4 00071054  7F A4 EB 78 */	mr r4, r29
/* 800740F8 00071058  38 A0 00 20 */	li r5, 0x20
/* 800740FC 0007105C  4B FE FE 89 */	bl __nwa__FUlP7JKRHeapi
/* 80074100 00071060  90 7C 00 04 */	stw r3, 4(r28)
/* 80074104 00071064  38 00 00 01 */	li r0, 1
/* 80074108 00071068  98 1C 00 0D */	stb r0, 0xd(r28)
/* 8007410C 0007106C  48 00 00 10 */	b lbl_8007411C
lbl_80074110:
/* 80074110 00071070  38 00 00 00 */	li r0, 0
/* 80074114 00071074  90 1C 00 04 */	stw r0, 4(r28)
/* 80074118 00071078  98 1C 00 0D */	stb r0, 0xd(r28)
lbl_8007411C:
/* 8007411C 0007107C  2C 1E 00 03 */	cmpwi r30, 3
/* 80074120 00071080  41 80 00 24 */	blt lbl_80074144
/* 80074124 00071084  7F E3 FB 78 */	mr r3, r31
/* 80074128 00071088  7F A4 EB 78 */	mr r4, r29
/* 8007412C 0007108C  38 A0 00 20 */	li r5, 0x20
/* 80074130 00071090  4B FE FE 55 */	bl __nwa__FUlP7JKRHeapi
/* 80074134 00071094  90 7C 00 08 */	stw r3, 8(r28)
/* 80074138 00071098  38 00 00 01 */	li r0, 1
/* 8007413C 0007109C  98 1C 00 0E */	stb r0, 0xe(r28)
/* 80074140 000710A0  48 00 00 10 */	b lbl_80074150
lbl_80074144:
/* 80074144 000710A4  38 00 00 00 */	li r0, 0
/* 80074148 000710A8  90 1C 00 08 */	stw r0, 8(r28)
/* 8007414C 000710AC  98 1C 00 0E */	stb r0, 0xe(r28)
lbl_80074150:
/* 80074150 000710B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80074154 000710B4  48 02 6D C9 */	bl func_8009AF1C
/* 80074158 000710B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007415C 000710BC  7C 08 03 A6 */	mtlr r0
/* 80074160 000710C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80074164 000710C4  4E 80 00 20 */	blr 

.global accumeXfbSize__6JUTXfbFv
accumeXfbSize__6JUTXfbFv:
/* 80074168 000710C8  80 6D 8C E8 */	lwz r3, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 8007416C 000710CC  80 83 00 04 */	lwz r4, 4(r3)
/* 80074170 000710D0  A0 64 00 04 */	lhz r3, 4(r4)
/* 80074174 000710D4  A0 04 00 08 */	lhz r0, 8(r4)
/* 80074178 000710D8  38 63 00 0F */	addi r3, r3, 0xf
/* 8007417C 000710DC  54 63 04 36 */	rlwinm r3, r3, 0, 0x10, 0x1b
/* 80074180 000710E0  7C 03 01 D6 */	mullw r0, r3, r0
/* 80074184 000710E4  54 03 08 3C */	slwi r3, r0, 1
/* 80074188 000710E8  4E 80 00 20 */	blr 