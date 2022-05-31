lbl_80419658:
/* 80419658  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8041965C  7C 08 02 A6 */	mflr r0
/* 80419660  90 01 00 64 */	stw r0, 0x64(r1)
/* 80419664  39 61 00 60 */	addi r11, r1, 0x60
/* 80419668  4B C8 18 65 */	bl func_8009AECC
/* 8041966C  3C A0 80 64 */	lis r5, data_80643D2C@ha /* 0x80643D2C@ha */
/* 80419670  7C 7B 1B 78 */	mr r27, r3
/* 80419674  88 05 3D 2C */	lbz r0, data_80643D2C@l(r5)  /* 0x80643D2C@l */
/* 80419678  7C 9C 23 78 */	mr r28, r4
/* 8041967C  7F 85 E3 78 */	mr r5, r28
/* 80419680  3B DB 00 1C */	addi r30, r27, 0x1c
/* 80419684  98 01 00 08 */	stb r0, 8(r1)
/* 80419688  38 61 00 08 */	addi r3, r1, 8
/* 8041968C  38 80 00 01 */	li r4, 1
/* 80419690  38 C0 00 01 */	li r6, 1
/* 80419694  38 E0 00 01 */	li r7, 1
/* 80419698  39 00 00 00 */	li r8, 0
/* 8041969C  39 20 00 01 */	li r9, 1
/* 804196A0  4B F9 5D D9 */	bl mFont_UnintToString
/* 804196A4  38 81 00 08 */	addi r4, r1, 8
/* 804196A8  38 60 00 00 */	li r3, 0
/* 804196AC  38 A0 00 01 */	li r5, 1
/* 804196B0  4B F9 82 A9 */	bl mHandbill_Set_free_str
/* 804196B4  3B A0 00 00 */	li r29, 0
/* 804196B8  3B E0 00 00 */	li r31, 0
/* 804196BC  48 00 00 28 */	b lbl_804196E4
lbl_804196C0:
/* 804196C0  7C 9E FA 2E */	lhzx r4, r30, r31
/* 804196C4  38 61 00 10 */	addi r3, r1, 0x10
/* 804196C8  4B F9 C2 DD */	bl mIN_copy_name_str
/* 804196CC  38 7D 00 07 */	addi r3, r29, 7
/* 804196D0  38 81 00 10 */	addi r4, r1, 0x10
/* 804196D4  38 A0 00 10 */	li r5, 0x10
/* 804196D8  4B F9 82 81 */	bl mHandbill_Set_free_str
/* 804196DC  3B BD 00 01 */	addi r29, r29, 1
/* 804196E0  3B FF 00 02 */	addi r31, r31, 2
lbl_804196E4:
/* 804196E4  7C 1D E0 00 */	cmpw r29, r28
/* 804196E8  41 80 FF D8 */	blt lbl_804196C0
/* 804196EC  38 61 00 30 */	addi r3, r1, 0x30
/* 804196F0  38 80 00 09 */	li r4, 9
/* 804196F4  38 A0 00 20 */	li r5, 0x20
/* 804196F8  4B FA 13 51 */	bl mem_clear
/* 804196FC  88 BB 00 11 */	lbz r5, 0x11(r27)
/* 80419700  38 61 00 30 */	addi r3, r1, 0x30
/* 80419704  38 80 00 09 */	li r4, 9
/* 80419708  38 A5 06 6C */	addi r5, r5, 0x66c
/* 8041970C  4B FD 55 C1 */	bl mString_Load_StringFromRom
/* 80419710  38 81 00 30 */	addi r4, r1, 0x30
/* 80419714  38 60 00 11 */	li r3, 0x11
/* 80419718  38 A0 00 09 */	li r5, 9
/* 8041971C  4B F9 82 3D */	bl mHandbill_Set_free_str
/* 80419720  38 61 00 0C */	addi r3, r1, 0xc
/* 80419724  38 80 00 04 */	li r4, 4
/* 80419728  38 A0 00 20 */	li r5, 0x20
/* 8041972C  4B FA 13 1D */	bl mem_clear
/* 80419730  88 BB 00 0F */	lbz r5, 0xf(r27)
/* 80419734  38 61 00 0C */	addi r3, r1, 0xc
/* 80419738  38 80 00 04 */	li r4, 4
/* 8041973C  38 A5 06 4D */	addi r5, r5, 0x64d
/* 80419740  4B FD 55 8D */	bl mString_Load_StringFromRom
/* 80419744  38 81 00 0C */	addi r4, r1, 0xc
/* 80419748  38 60 00 12 */	li r3, 0x12
/* 8041974C  38 A0 00 04 */	li r5, 4
/* 80419750  4B F9 82 09 */	bl mHandbill_Set_free_str
/* 80419754  88 9B 00 0E */	lbz r4, 0xe(r27)
/* 80419758  38 61 00 20 */	addi r3, r1, 0x20
/* 8041975C  4B FD 57 E5 */	bl mString_Load_HourStringFromRom
/* 80419760  7C 65 1B 78 */	mr r5, r3
/* 80419764  38 81 00 20 */	addi r4, r1, 0x20
/* 80419768  38 60 00 13 */	li r3, 0x13
/* 8041976C  4B F9 81 ED */	bl mHandbill_Set_free_str
/* 80419770  39 61 00 60 */	addi r11, r1, 0x60
/* 80419774  4B C8 17 A5 */	bl func_8009AF18
/* 80419778  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8041977C  7C 08 03 A6 */	mtlr r0
/* 80419780  38 21 00 60 */	addi r1, r1, 0x60
/* 80419784  4E 80 00 20 */	blr 
