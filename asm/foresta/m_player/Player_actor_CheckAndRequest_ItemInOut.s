lbl_804DCF28:
/* 804DCF28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DCF2C  7C 08 02 A6 */	mflr r0
/* 804DCF30  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DCF34  39 61 00 30 */	addi r11, r1, 0x30
/* 804DCF38  4B BB DF 89 */	bl func_8009AEC0
/* 804DCF3C  7C 78 1B 78 */	mr r24, r3
/* 804DCF40  7C 99 23 78 */	mr r25, r4
/* 804DCF44  8B A3 0E 6D */	lbz r29, 0xe6d(r3)
/* 804DCF48  7C BA 2B 78 */	mr r26, r5
/* 804DCF4C  48 00 3A 19 */	bl Player_actor_Get_ItemKind_fromScene
/* 804DCF50  7C 7F 07 75 */	extsb. r31, r3
/* 804DCF54  41 80 02 4C */	blt lbl_804DD1A0
/* 804DCF58  7F A0 07 75 */	extsb. r0, r29
/* 804DCF5C  40 82 02 44 */	bne lbl_804DD1A0
/* 804DCF60  83 98 0D 08 */	lwz r28, 0xd08(r24)
/* 804DCF64  83 78 0C F8 */	lwz r27, 0xcf8(r24)
/* 804DCF68  7F 83 E3 78 */	mr r3, r28
/* 804DCF6C  4B FF B1 D9 */	bl Player_actor_CheckPlayer_AbleOutItem
/* 804DCF70  7C 7D 1B 78 */	mr r29, r3
/* 804DCF74  7F 63 DB 78 */	mr r3, r27
/* 804DCF78  4B FF B1 CD */	bl Player_actor_CheckPlayer_AbleOutItem
/* 804DCF7C  2C 1D 00 03 */	cmpwi r29, 3
/* 804DCF80  7C 7E 1B 78 */	mr r30, r3
/* 804DCF84  41 82 00 0C */	beq lbl_804DCF90
/* 804DCF88  2C 1E 00 03 */	cmpwi r30, 3
/* 804DCF8C  40 82 00 0C */	bne lbl_804DCF98
lbl_804DCF90:
/* 804DCF90  7F 43 D3 78 */	mr r3, r26
/* 804DCF94  48 00 02 10 */	b lbl_804DD1A4
lbl_804DCF98:
/* 804DCF98  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804DCF9C  38 00 00 00 */	li r0, 0
/* 804DCFA0  41 80 00 0C */	blt lbl_804DCFAC
/* 804DCFA4  2C 1F 00 33 */	cmpwi r31, 0x33
/* 804DCFA8  41 80 00 34 */	blt lbl_804DCFDC
lbl_804DCFAC:
/* 804DCFAC  2C 1F 00 37 */	cmpwi r31, 0x37
/* 804DCFB0  41 80 00 0C */	blt lbl_804DCFBC
/* 804DCFB4  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 804DCFB8  41 80 00 24 */	blt lbl_804DCFDC
lbl_804DCFBC:
/* 804DCFBC  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 804DCFC0  41 80 00 0C */	blt lbl_804DCFCC
/* 804DCFC4  2C 1F 00 47 */	cmpwi r31, 0x47
/* 804DCFC8  41 80 00 14 */	blt lbl_804DCFDC
lbl_804DCFCC:
/* 804DCFCC  2C 1F 00 47 */	cmpwi r31, 0x47
/* 804DCFD0  41 80 00 10 */	blt lbl_804DCFE0
/* 804DCFD4  2C 1F 00 4F */	cmpwi r31, 0x4f
/* 804DCFD8  40 80 00 08 */	bge lbl_804DCFE0
lbl_804DCFDC:
/* 804DCFDC  38 00 00 01 */	li r0, 1
lbl_804DCFE0:
/* 804DCFE0  2C 00 00 00 */	cmpwi r0, 0
/* 804DCFE4  40 82 00 6C */	bne lbl_804DD050
/* 804DCFE8  2C 1D 00 02 */	cmpwi r29, 2
/* 804DCFEC  41 82 00 0C */	beq lbl_804DCFF8
/* 804DCFF0  2C 1D 00 01 */	cmpwi r29, 1
/* 804DCFF4  40 82 00 28 */	bne lbl_804DD01C
lbl_804DCFF8:
/* 804DCFF8  2C 1E 00 00 */	cmpwi r30, 0
/* 804DCFFC  40 82 00 20 */	bne lbl_804DD01C
/* 804DD000  7F 23 CB 78 */	mr r3, r25
/* 804DD004  38 80 00 25 */	li r4, 0x25
/* 804DD008  48 01 F8 99 */	bl func_804FC8A0
/* 804DD00C  2C 03 00 00 */	cmpwi r3, 0
/* 804DD010  41 82 01 90 */	beq lbl_804DD1A0
/* 804DD014  38 60 00 49 */	li r3, 0x49
/* 804DD018  48 00 01 8C */	b lbl_804DD1A4
lbl_804DD01C:
/* 804DD01C  2C 1D 00 00 */	cmpwi r29, 0
/* 804DD020  40 82 01 80 */	bne lbl_804DD1A0
/* 804DD024  2C 1E 00 02 */	cmpwi r30, 2
/* 804DD028  41 82 00 0C */	beq lbl_804DD034
/* 804DD02C  2C 1E 00 01 */	cmpwi r30, 1
/* 804DD030  40 82 01 70 */	bne lbl_804DD1A0
lbl_804DD034:
/* 804DD034  7F 23 CB 78 */	mr r3, r25
/* 804DD038  38 80 00 25 */	li r4, 0x25
/* 804DD03C  48 01 F3 11 */	bl func_804FC34C
/* 804DD040  2C 03 00 00 */	cmpwi r3, 0
/* 804DD044  41 82 01 5C */	beq lbl_804DD1A0
/* 804DD048  38 60 00 48 */	li r3, 0x48
/* 804DD04C  48 00 01 58 */	b lbl_804DD1A4
lbl_804DD050:
/* 804DD050  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804DD054  38 00 00 00 */	li r0, 0
/* 804DD058  41 80 00 0C */	blt lbl_804DD064
/* 804DD05C  2C 1F 00 33 */	cmpwi r31, 0x33
/* 804DD060  41 80 00 34 */	blt lbl_804DD094
lbl_804DD064:
/* 804DD064  2C 1F 00 37 */	cmpwi r31, 0x37
/* 804DD068  41 80 00 0C */	blt lbl_804DD074
/* 804DD06C  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 804DD070  41 80 00 24 */	blt lbl_804DD094
lbl_804DD074:
/* 804DD074  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 804DD078  41 80 00 0C */	blt lbl_804DD084
/* 804DD07C  2C 1F 00 47 */	cmpwi r31, 0x47
/* 804DD080  41 80 00 14 */	blt lbl_804DD094
lbl_804DD084:
/* 804DD084  2C 1F 00 47 */	cmpwi r31, 0x47
/* 804DD088  41 80 00 10 */	blt lbl_804DD098
/* 804DD08C  2C 1F 00 4F */	cmpwi r31, 0x4f
/* 804DD090  40 80 00 08 */	bge lbl_804DD098
lbl_804DD094:
/* 804DD094  38 00 00 01 */	li r0, 1
lbl_804DD098:
/* 804DD098  2C 00 00 00 */	cmpwi r0, 0
/* 804DD09C  41 82 00 50 */	beq lbl_804DD0EC
/* 804DD0A0  7F 23 CB 78 */	mr r3, r25
/* 804DD0A4  4B EF C5 9D */	bl get_player_actor_withoutCheck
/* 804DD0A8  2C 1C 00 41 */	cmpwi r28, 0x41
/* 804DD0AC  38 00 00 00 */	li r0, 0
/* 804DD0B0  40 82 00 0C */	bne lbl_804DD0BC
/* 804DD0B4  80 03 0D 6C */	lwz r0, 0xd6c(r3)
/* 804DD0B8  48 00 00 10 */	b lbl_804DD0C8
lbl_804DD0BC:
/* 804DD0BC  2C 1C 00 4A */	cmpwi r28, 0x4a
/* 804DD0C0  40 82 00 08 */	bne lbl_804DD0C8
/* 804DD0C4  80 03 0D 60 */	lwz r0, 0xd60(r3)
lbl_804DD0C8:
/* 804DD0C8  2C 00 00 00 */	cmpwi r0, 0
/* 804DD0CC  41 82 00 20 */	beq lbl_804DD0EC
/* 804DD0D0  7F 23 CB 78 */	mr r3, r25
/* 804DD0D4  38 80 00 25 */	li r4, 0x25
/* 804DD0D8  48 01 F7 C9 */	bl func_804FC8A0
/* 804DD0DC  2C 03 00 00 */	cmpwi r3, 0
/* 804DD0E0  41 82 00 0C */	beq lbl_804DD0EC
/* 804DD0E4  38 60 00 49 */	li r3, 0x49
/* 804DD0E8  48 00 00 BC */	b lbl_804DD1A4
lbl_804DD0EC:
/* 804DD0EC  7F 63 DB 78 */	mr r3, r27
/* 804DD0F0  4B FF B0 CD */	bl Player_actor_Check_is_demo_mode
/* 804DD0F4  7C 7F 1B 78 */	mr r31, r3
/* 804DD0F8  7F 83 E3 78 */	mr r3, r28
/* 804DD0FC  4B FF B0 C1 */	bl Player_actor_Check_is_demo_mode
/* 804DD100  2C 1F 00 00 */	cmpwi r31, 0
/* 804DD104  88 18 0E 6C */	lbz r0, 0xe6c(r24)
/* 804DD108  41 82 00 30 */	beq lbl_804DD138
/* 804DD10C  2C 03 00 00 */	cmpwi r3, 0
/* 804DD110  40 82 00 28 */	bne lbl_804DD138
/* 804DD114  7C 00 07 75 */	extsb. r0, r0
/* 804DD118  41 82 00 20 */	beq lbl_804DD138
/* 804DD11C  7F 23 CB 78 */	mr r3, r25
/* 804DD120  38 80 00 25 */	li r4, 0x25
/* 804DD124  48 01 F2 29 */	bl func_804FC34C
/* 804DD128  2C 03 00 00 */	cmpwi r3, 0
/* 804DD12C  41 82 00 0C */	beq lbl_804DD138
/* 804DD130  38 60 00 48 */	li r3, 0x48
/* 804DD134  48 00 00 70 */	b lbl_804DD1A4
lbl_804DD138:
/* 804DD138  2C 1D 00 02 */	cmpwi r29, 2
/* 804DD13C  40 82 00 30 */	bne lbl_804DD16C
/* 804DD140  2C 1E 00 00 */	cmpwi r30, 0
/* 804DD144  41 82 00 0C */	beq lbl_804DD150
/* 804DD148  2C 1E 00 01 */	cmpwi r30, 1
/* 804DD14C  40 82 00 20 */	bne lbl_804DD16C
lbl_804DD150:
/* 804DD150  7F 23 CB 78 */	mr r3, r25
/* 804DD154  38 80 00 25 */	li r4, 0x25
/* 804DD158  48 01 F7 49 */	bl func_804FC8A0
/* 804DD15C  2C 03 00 00 */	cmpwi r3, 0
/* 804DD160  41 82 00 40 */	beq lbl_804DD1A0
/* 804DD164  38 60 00 49 */	li r3, 0x49
/* 804DD168  48 00 00 3C */	b lbl_804DD1A4
lbl_804DD16C:
/* 804DD16C  2C 1D 00 00 */	cmpwi r29, 0
/* 804DD170  41 82 00 0C */	beq lbl_804DD17C
/* 804DD174  2C 1D 00 01 */	cmpwi r29, 1
/* 804DD178  40 82 00 28 */	bne lbl_804DD1A0
lbl_804DD17C:
/* 804DD17C  2C 1E 00 02 */	cmpwi r30, 2
/* 804DD180  40 82 00 20 */	bne lbl_804DD1A0
/* 804DD184  7F 23 CB 78 */	mr r3, r25
/* 804DD188  38 80 00 25 */	li r4, 0x25
/* 804DD18C  48 01 F1 C1 */	bl func_804FC34C
/* 804DD190  2C 03 00 00 */	cmpwi r3, 0
/* 804DD194  41 82 00 0C */	beq lbl_804DD1A0
/* 804DD198  38 60 00 48 */	li r3, 0x48
/* 804DD19C  48 00 00 08 */	b lbl_804DD1A4
lbl_804DD1A0:
/* 804DD1A0  7F 43 D3 78 */	mr r3, r26
lbl_804DD1A4:
/* 804DD1A4  39 61 00 30 */	addi r11, r1, 0x30
/* 804DD1A8  4B BB DD 65 */	bl func_8009AF0C
/* 804DD1AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DD1B0  7C 08 03 A6 */	mtlr r0
/* 804DD1B4  38 21 00 30 */	addi r1, r1, 0x30
/* 804DD1B8  4E 80 00 20 */	blr 
