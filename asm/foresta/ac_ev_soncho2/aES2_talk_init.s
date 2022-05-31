lbl_80524DC8:
/* 80524DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80524DCC  7C 08 02 A6 */	mflr r0
/* 80524DD0  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80524DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80524DD8  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80524DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80524DE0  7C 7F 1B 78 */	mr r31, r3
/* 80524DE4  90 03 09 64 */	stw r0, 0x964(r3)
/* 80524DE8  4B E7 55 CD */	bl mDemo_Set_ListenAble
/* 80524DEC  7F E3 FB 78 */	mr r3, r31
/* 80524DF0  4B E7 54 A9 */	bl mDemo_Start
/* 80524DF4  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 80524DF8  28 00 00 03 */	cmplwi r0, 3
/* 80524DFC  40 82 00 0C */	bne lbl_80524E08
/* 80524E00  4B EC 8C 95 */	bl mSC_LightHouse_Quest_Start
/* 80524E04  4B FF FB 5D */	bl aES2_LightHouse_set_free_str
lbl_80524E08:
/* 80524E08  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 80524E0C  28 00 00 04 */	cmplwi r0, 4
/* 80524E10  40 82 00 10 */	bne lbl_80524E20
/* 80524E14  A0 7F 09 9C */	lhz r3, 0x99c(r31)
/* 80524E18  38 80 00 00 */	li r4, 0
/* 80524E1C  4B EC 77 B5 */	bl mSC_item_string_set
lbl_80524E20:
/* 80524E20  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 80524E24  28 00 00 02 */	cmplwi r0, 2
/* 80524E28  40 82 00 18 */	bne lbl_80524E40
/* 80524E2C  A0 7F 09 9C */	lhz r3, 0x99c(r31)
/* 80524E30  38 80 00 00 */	li r4, 0
/* 80524E34  4B EC 77 9D */	bl mSC_item_string_set
/* 80524E38  88 7F 09 AE */	lbz r3, 0x9ae(r31)
/* 80524E3C  4B EC 78 31 */	bl mSC_event_name_set
lbl_80524E40:
/* 80524E40  A0 7F 09 98 */	lhz r3, 0x998(r31)
/* 80524E44  88 9F 09 9A */	lbz r4, 0x99a(r31)
/* 80524E48  88 BF 09 9B */	lbz r5, 0x99b(r31)
/* 80524E4C  88 DF 09 AE */	lbz r6, 0x9ae(r31)
/* 80524E50  4B E5 88 11 */	bl mCD_calendar_event_on
/* 80524E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80524E58  38 60 00 01 */	li r3, 1
/* 80524E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80524E60  7C 08 03 A6 */	mtlr r0
/* 80524E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80524E68  4E 80 00 20 */	blr 
