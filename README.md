# strident-octo-giggle

Write a puppet module which creates a new resource, called `Licensefile`.

From a puppet manifest I should be able to do:

```puppet
licensefile { '/path/to/file.lic':
    content => 'This text should end up in the license file',
}
```

The only wrinkle is that the service which reads the license file will rename it
to `/path/to/file.lic.installed` after it has been processed. So, if `/path/to/file.lic.installed`
exists, the `/path/to/file.lic` file should not be created (because that would cause the
service to process the license a second time).

So the logic of the module should be something like this:

1. Does `file.lic.installed` exist? If so, don't do anything.
2. Does `file.lic` exist? If so, don't do anything.
3. If neither file exists, create `file.lic` with the supplied contents.
