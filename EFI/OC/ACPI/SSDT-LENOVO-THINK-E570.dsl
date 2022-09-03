/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLlskIDj.aml, Sat Sep  3 20:27:14 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000913 (2323)
 *     Revision         0x02
 *     Checksum         0x06
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "E570"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "E570", 0x00000000)
{
    External (_PR_.CPU0, ProcessorObj)    // (from opcode)
    External (_SB_.LID0, DeviceObj)    // (from opcode)
    External (_SB_.LID_, DeviceObj)    // (from opcode)
    External (_SB_.LID_.XLID, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.AC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HFNI, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HFSP, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.VRST, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.LID0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.LID_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHCI.PMEE, FieldUnitObj)    // (from opcode)
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)
    External (DGPU._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (DGPU._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (EXT1, MethodObj)    // 1 Arguments (from opcode)
    External (EXT2, MethodObj)    // 1 Arguments (from opcode)
    External (EXT3, MethodObj)    // 1 Arguments (from opcode)
    External (EXT4, MethodObj)    // 1 Arguments (from opcode)
    External (LNUX, IntObj)    // (from opcode)
    External (WNTF, IntObj)    // (from opcode)
    External (ZPTS, MethodObj)    // 1 Arguments (from opcode)
    External (ZWAK, MethodObj)    // 1 Arguments (from opcode)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            Store (One, LNUX)
            Store (One, WNTF)
        }

        Scope (_PR)
        {
            Scope (CPU0)
            {
                If (_OSI ("Darwin"))
                {
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }

                        Return (Package (0x02)
                        {
                            "plugin-type", 
                            One
                        })
                    }
                }
            }
        }

        Scope (_SB)
        {
            Device (USBX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x04)
                    {
                        "kUSBSleepPortCurrentLimit", 
                        0x0BB8, 
                        "kUSBWakePortCurrentLimit", 
                        0x0BB8
                    })
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (LID)
            {
                Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                {
                    If (_OSI ("Darwin"))
                    {
                        If (LEqual (\_SB.PCI9.FNOK, One))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (\_SB.LID.XLID ())
                        }
                    }
                    Else
                    {
                        Return (\_SB.LID.XLID ())
                    }
                }
            }

            Device (PCI9)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (FNOK, Zero)
                Name (MODE, Zero)
                Name (TPTS, Zero)
                Name (TWAK, Zero)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Device (PWRB)
            {
                Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (PCI0)
            {
                Device (MCHC)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Scope (GFX0)
                {
                    Device (PNLF)
                    {
                        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
                        Name (_CID, "backlight")  // _CID: Compatible ID
                        Name (_UID, 0x10)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0B)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Scope (LPC)
                {
                    Scope (EC)
                    {
                        If (_OSI ("Darwin"))
                        {
                            OperationRegion (ESEN, EmbeddedControl, Zero, 0x0100)
                            Field (ESEN, ByteAcc, Lock, Preserve)
                            {
                                Offset (0x78), 
                                EST0,   8, 
                                EST1,   8, 
                                EST2,   8, 
                                EST3,   8, 
                                EST4,   8, 
                                EST5,   8, 
                                EST6,   8, 
                                EST7,   8, 
                                Offset (0xC0), 
                                EST8,   8, 
                                EST9,   8, 
                                ESTA,   8, 
                                ESTB,   8, 
                                ESTC,   8, 
                                ESTD,   8, 
                                ESTE,   8, 
                                ESTF,   8
                            }
                        }

                        Method (RE1B, 1, NotSerialized)
                        {
                            If (_OSI ("Darwin"))
                            {
                                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                                Field (ERAM, ByteAcc, NoLock, Preserve)
                                {
                                    BYTE,   8
                                }

                                Return (BYTE)
                            }
                        }

                        Method (RECB, 2, Serialized)
                        {
                            If (_OSI ("Darwin"))
                            {
                                ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
                                Name (TEMP, Buffer (Arg1){})
                                Add (Arg1, Arg0, Arg1)
                                Store (Zero, Local0)
                                While (LLess (Arg0, Arg1))
                                {
                                    Store (RE1B (Arg0), Index (TEMP, Local0))
                                    Increment (Arg0)
                                    Increment (Local0)
                                }

                                Return (TEMP)
                            }
                        }

                        Method (WE1B, 2, NotSerialized)
                        {
                            If (_OSI ("Darwin"))
                            {
                                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                                Field (ERAM, ByteAcc, NoLock, Preserve)
                                {
                                    BYTE,   8
                                }

                                Store (Arg1, BYTE)
                            }
                        }

                        Method (WECB, 3, Serialized)
                        {
                            If (_OSI ("Darwin"))
                            {
                                ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
                                Name (TEMP, Buffer (Arg1){})
                                Store (Arg2, TEMP)
                                Add (Arg1, Arg0, Arg1)
                                Store (Zero, Local0)
                                While (LLess (Arg0, Arg1))
                                {
                                    WE1B (Arg0, DerefOf (Index (TEMP, Local0)))
                                    Increment (Arg0)
                                    Increment (Local0)
                                }
                            }
                        }

                        Method (NBAT, 0, Serialized)
                        {
                            If (_OSI ("Darwin"))
                            {
                                If (CondRefOf (BAT1))
                                {
                                    Notify (BAT1, 0x80)
                                }
                            }
                        }

                        Scope (HKEY)
                        {
                            If (_OSI ("Darwin"))
                            {
                                Name (OSYS, 0x07DF)
                            }

                            Method (CSSI, 1, NotSerialized)
                            {
                                If (_OSI ("Darwin"))
                                {
                                    \_SI._SST (Arg0)
                                }
                            }

                            Method (CFSP, 1, NotSerialized)
                            {
                                If (_OSI ("Darwin"))
                                {
                                    Store (Arg0, \_SB.PCI0.LPC.EC.HFSP)
                                }
                            }

                            Method (CFNI, 1, NotSerialized)
                            {
                                If (_OSI ("Darwin"))
                                {
                                    Store (Arg0, \_SB.PCI0.LPC.EC.HFNI)
                                }
                            }

                            Method (CRST, 1, NotSerialized)
                            {
                                If (_OSI ("Darwin"))
                                {
                                    Store (Arg0, \_SB.PCI0.LPC.EC.VRST)
                                }
                            }
                        }

                        Scope (AC)
                        {
                            If (_OSI ("Darwin"))
                            {
                                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                                {
                                    0x6F, 
                                    0x03
                                })
                            }
                        }
                    }
                }
            }
        }

        Method (EXT1, 1, NotSerialized)
        {
            If (LEqual (0x05, Arg0))
            {
                If (CondRefOf (\_SB.PCI0.XHC.PMEE))
                {
                    Store (Zero, \_SB.PCI0.XHC.PMEE)
                }

                If (CondRefOf (\_SB.PCI0.XHCI.PMEE))
                {
                    Store (Zero, \_SB.PCI0.XHCI.PMEE)
                }
            }
        }

        Method (EXT3, 1, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If (LEqual (0x03, Arg0))
                {
                    \_SI._SST (One)
                }
            }
        }

        Method (EXT4, 1, NotSerialized)
        {
            If (LEqual (0x03, Arg0))
            {
                If (CondRefOf (\_SB.LID))
                {
                    Notify (\_SB.LID, 0x80)
                }

                If (CondRefOf (\_SB.LID0))
                {
                    Notify (\_SB.LID0, 0x80)
                }

                If (CondRefOf (\_SB.PCI0.LPCB.LID))
                {
                    Notify (\_SB.PCI0.LPCB.LID, 0x80)
                }

                If (CondRefOf (\_SB.PCI0.LPCB.LID0))
                {
                    Notify (\_SB.PCI0.LPCB.LID0, 0x80)
                }
            }
        }

        Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
        {
            If (_OSI ("Darwin"))
            {
                Store (Arg0, \_SB.PCI9.TPTS)
                If (LEqual (\_SB.PCI9.FNOK, One))
                {
                    Store (0x03, Arg0)
                }

                If (CondRefOf (\DGPU._ON))
                {
                    \DGPU._ON ()
                }

                If (CondRefOf (EXT1))
                {
                    EXT1 (Arg0)
                }

                If (CondRefOf (EXT2))
                {
                    EXT2 (Arg0)
                }
            }

            ZPTS (Arg0)
        }

        Method (_WAK, 1, NotSerialized)  // _WAK: Wake
        {
            If (_OSI ("Darwin"))
            {
                Store (Arg0, \_SB.PCI9.TWAK)
                If (LEqual (\_SB.PCI9.FNOK, One))
                {
                    Store (Zero, \_SB.PCI9.FNOK)
                    Store (0x03, Arg0)
                }

                If (CondRefOf (\DGPU._OFF))
                {
                    \DGPU._OFF ()
                }

                If (CondRefOf (EXT3))
                {
                    EXT3 (Arg0)
                }

                If (CondRefOf (EXT4))
                {
                    EXT4 (Arg0)
                }
            }

            Store (ZWAK (Arg0), Local0)
            Return (Local0)
        }
    }
}

